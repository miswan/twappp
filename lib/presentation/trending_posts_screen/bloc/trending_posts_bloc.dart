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
  TrendingPostsBloc(TrendingPostsState initialState) : super(initialState) {
    on<TrendingPostsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TrendingPostsInitialEvent event,
    Emitter<TrendingPostsState> emit,
  ) async {
    // Initialize text controller
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));

    // Update state with trending tab model and post section items
    emit(state.copyWith(
      trendingTabModelObj: state.trendingTabModelObj?.copyWith(),
      postsectionItemList: fillPostsectionItemList(),
    ));
  }

  List<PostsectionItemModel> fillPostsectionItemList() {
    return [
      PostsectionItemModel(
          rizalreynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          description:
              "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream comes true",
          bali: "#Bali",
          dreams: "#dreams",
          zipcode: "2200",
          eighthundred: "800"),
      PostsectionItemModel(
          rizalreynaldhi: "Rizal Reynaldhi",
          duration: "35 minutes ago",
          description:
              "Vacation to Bali is my biggest dream because I want to enjoy the beauty of the beach called Kute, hopefully my dream comes true",
          bali: "#Bali",
          dreams: "#dreams",
          zipcode: "2200",
          eighthundred: "800"),
      PostsectionItemModel(),
      PostsectionItemModel()
    ];
  }
}
