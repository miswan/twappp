
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/postsection_item_model.dart';

import '../models/trending_posts_initial_model.dart';

import '../models/trending_posts_model.dart';

import '../models/trending_tab_model.dart';

part 'trending_posts_event.dart';

part 'trending_posts_state.dart';

/// A bloc that manages the state of a TrendingPosts according to the event that is dispatched to it.

class TrendingPostsBloc extends Bloc<TrendingPostsEvent, TrendingPostsState> {

TrendingPostsBloc(TrendingPostsState initialstate): super(initialstate) {

}

on<TrendingPostsInitialEvent>(_onInitialize);

_onInitialize(

TrendingPostsInitialEvent event,

Emitter<TrendingPostsState> emit,

) async {

emit(

state.copywith(

}

searchController: TextEditingController(),

),

);

emit(

state.copywith(

trendingTabModelobj: state.trendingTabModelobj?.copywith(

);

}

),

postsectionItemList: fillPostsectionItemList(),

),

List<PostsectionItemModel> fillPostsectionItemList() {

return [

PostsectionItemModel(

rizalreynaldhi: "Rizal Reynaldhi",

duration: "35 minutes ago",

description:

"Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dr

bali: "#Bali",

dreams: "#dreams",

zipcode: "2200",

eighthundred: "800"),

PostsectionItemModel(

rizalreynaldhi: "Rizal Reynaldhi",

duration: "35 minutes ago",

description:

"Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dr

bali: "#Bali",

dreams: "#dreams",

zipcode: "2200",

eighthundred: "800"),

PostsectionItemModel(),

PostsectionItemModel()

}

];