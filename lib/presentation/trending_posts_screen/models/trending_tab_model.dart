
import 'package:equatable/equatable.dart';

import 'postsection_item_model.dart';

/// This class is used in the [trending_tab_page] screen.

// ignore_for_file: must_be_immutable

class TrendingTabModel extends Equatable {

TrendingTabModel({this.postsectionItemList = const []});

List PostsectionItemModel> postsectionItemList;

TrendingTabModel copywith({List<PostsectionItemModel>? postsectionItemList}) {

return TrendingTabModel(

postsectionItemList: postsectionItemList ?? this.postsectionItemList,

);

@override

List<Object?> get props => [postsectionItemList];

}