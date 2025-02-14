import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import 'list_item_model.dart';

import 'listfortysix_item_model.dart';

/// This class defines the variables used in the [account_details_screen],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class AccountDetailsModel extends Equatable {
  AccountDetailsModel(
      {this.listfortysixItemList = const [], this.listItemList = const []});

  List<ListfortysixItemModel> listfortysixItemList;

  List<ListItemModel> listItemList;

  AccountDetailsModel copywith({
    List<ListfortysixItemModel>? listfortysixItemList,
    List<ListItemModel>? listItemList,
  }) {
    return AccountDetailsModel(
      listfortysixItemList: listfortysixItemList ?? this.listfortysixItemList,
      listItemList: listItemList ?? this.listItemList,
    );
  }

  @override
  List<Object?> get props => [listfortysixItemList, listItemList];
}
