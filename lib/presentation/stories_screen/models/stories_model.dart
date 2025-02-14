import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import 'listmerry_new_item_model.dart';

import 'stories_item_model.dart';

/// This class defines the variables used in the [stories_screen],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class StoriesModel extends Equatable {
  StoriesModel(
      {this.storiesItemList = const [], this.listmerryNewItemList = const []});

  List<StoriesItemModel> storiesItemList;

  List<ListmerryNewItemModel> listmerryNewItemList;

  StoriesModel copywith({
    List<StoriesItemModel>? storiesItemList,
    List<ListmerryNewItemModel>? listmerryNewItemList,
  }) {
    return StoriesModel(
      storiesItemList: storiesItemList ?? this.storiesItemList,
      listmerryNewItemList: listmerryNewItemList ?? this.listmerryNewItemList,
    );
  }

  @override
  List<Object?> get props => [storiesItemList, listmerryNewItemList];
}
