
import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import 'profilessection_item_model.dart';

/// This class defines the variables used in the [discover_page],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class DiscoverModel extends Equatable {

DiscoverModel({this.profilessectionItemList = const []});

List ProfilessectionItemModel> profilessectionItemList;

DiscoverModel copywith(

{List<ProfilessectionItemModel>? profilessectionItemList}) {

return DiscoverModel(

profilessectionItemList:

profilessectionItemList ?? this.profilessectionItemList,

);

}

@override

List<Object?> get props => [profilessectionItemList];

}