import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import 'listsave_one_item_model.dart';

import 'postlist_item_model.dart';

/// This class defines the variables used in the [stories_and_tweets_screen],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class StoriesAndTweetsModel extends Equatable {
  StoriesAndTweetsModel(
      {this.listsaveOneItemList = const [], this.postlistItemList = const []});

  List<ListsaveOneItemModel> listsaveOneItemList;

  List<PostlistItemModel> postlistItemList;

  StoriesAndTweetsModel copywith({
    List<ListsaveOneItemModel>? listsaveoneItemList,
    List<PostlistItemModel>? postlistItemList,
  }) {
    return StoriesAndTweetsModel(
      listsaveoneItemList: listsaveOneItemList ?? this.listsaveoneItemList,
      postlistItemList: postlistItemList ?? this.postlistItemList,
    );
  }

  @override
  List<Object?> get props => [listsaveOneItemList, postlistItemList];
}
