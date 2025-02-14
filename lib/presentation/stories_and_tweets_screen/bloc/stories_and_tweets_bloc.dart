
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/listsave_one_item_model.dart';

import '../models/postlist_item_model.dart';

import '../models/stories_and_tweets_model.dart';

part 'stories_and_tweets_event.dart';

part 'stories_and_tweets_state.dart';

/// A bloc that manages the state of a StoriesAndTweets according to the event that is dispatched to it.

class StoriesAndTweetsBloc

extends Bloc StoriesAndTweetsEvent, StoriesAndTweetsState> {

StoriesAndTweetsBloc(StoriesAndTweetsState initialstate)

}

: super(initialstate) {

on<StoriesAndTweetsInitialEvent>(_onInitialize);

_onInitialize(

StoriesAndTweetsInitialEvent event,

Emitter<StoriesAndTweetsstate> emit,

) async {

emit(

state.copywith(

searchController: TextEditingController(),

),

);

emit(

state.copywith(

storiesAndTweetsModelObj: state.storiesAndTweetsModelobj?.copywith(

listsaveOneItemList: fillListsaveOneItemList(),

postlistItemList: fillpostlistItemList(),

),

),

);

}

List<ListsaveOneItemModel> fillListsaveOneItemList() {

return [

ListsaveoneItemModel(

saveone: ImageConstant.imgSavePrimary, newpost: "New Post"),

ListsaveOneItemModel(newpost: "Jordan"),

ListsaveOneItemModel (newpost: "Chrystin"),

ListsaveOneItemModel (newpost: "Vrindha"),

ListsaveOneItemModel()

}

];

تا

List<PostlistItemModel> fillpostlistItemList() {

return [

PostlistItemModel(

albertoconnor: "Albert of connor",

duration: "4 hours ago",

introduceiam:

"Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer

zipcode: "2200",

eighthundred: "800")

}

}

];