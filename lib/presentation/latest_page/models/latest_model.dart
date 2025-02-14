import 'package:equatable/equatable.dart';

import 'trendingposts_item_model.dart';

/// This class defines the variables used in the [latest_page],

/// and is typically used to hold data that is passed between different parts of the application.

// ignore_for_file: must_be_immutable

class LatestModel extends Equatable {

LatestModel({this.trendingpostsItemList = const []});

List<TrendingpostsItemModel> trendingpostsItemList;

LatestModel copywith({List<TrendingpostsItemModel>? trendingpostsItemList}) {

return LatestModel(

trendingpostsItemList:

trendingpostsItemList ?? this.trendingpostsItemList,

);

@override

List<Object?> get props => [trendingpostsItemList];

}