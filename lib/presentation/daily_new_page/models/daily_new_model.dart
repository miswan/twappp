import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import 'listforty_one_item_model.dart';

import 'profilessection1_item_model.dart';

/// This class defines the variables used in the [daily_new_page],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class DailyNewModel extends Equatable {

DailyNewModel(

{this.profilessection1ItemList = const [],

this.listfortyOneItemList = const []});

List Profilessection1ItemModel> profilessection1ItemList;

List<ListfortyOneItemModel> listfortyOneItemList;

DailyNewModel copywith({

List Profilessection1ItemModel>? profilessection1ItemList,

List<ListfortyOneItemModel>? listfortyOneItemList,

}) {

return DailyNewModel(

profilessection1ItemList:

profilessection1ItemList ?? this.profilessection1ItemList,

listfortyoneItemList: listfortyOneItemList ?? this.listfortyOneItemList,

);

}

@override

List<Object?> get props => [profilessection1ItemList, listfortyOneItemList];

}