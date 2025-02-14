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
    extends Bloc<StoriesAndTweetsEvent, StoriesAndTweetsState> {
  StoriesAndTweetsBloc(StoriesAndTweetsState initialState)
      : super(initialState) {
    on<StoriesAndTweetsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    StoriesAndTweetsInitialEvent event,
    Emitter<StoriesAndTweetsState> emit,
  ) async {
    emit(state.copyWith(
      searchController: TextEditingController(),
    ));

    emit(state.copyWith(
      storiesAndTweetsModelObj: state.storiesAndTweetsModelObj?.copyWith(
        listsaveOneItemList: fillListsaveOneItemList(),
        postlistItemList: fillPostlistItemList(),
      ),
    ));
  }

  List<ListsaveOneItemModel> fillListsaveOneItemList() {
    return [
      ListsaveOneItemModel(
          saveOne: ImageConstant.imgSavePrimary, newPost: "New Post"),
      ListsaveOneItemModel(newPost: "Jordan"),
      ListsaveOneItemModel(newPost: "Chrystin"),
      ListsaveOneItemModel(newPost: "Vrindha"),
      ListsaveOneItemModel(),
    ];
  }

  List<PostlistItemModel> fillPostlistItemList() {
    return [
      PostlistItemModel(
          albertoConnor: "Albert of Connor",
          duration: "4 hours ago",
          introduceIam:
              "Introduce I am a photographer who travels around the world everyday, these are some of my works as a photographer",
          zipcode: "2200",
          eightHundred: "800"),
      // Add more PostlistItemModel instances as needed
    ];
  }
}
