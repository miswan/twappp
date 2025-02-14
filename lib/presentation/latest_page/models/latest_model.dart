import 'trendingposts_item_model.dart';

class LatestModel {
  List<TrendingpostsItemModel> trendingpostsItemList;

  LatestModel({this.trendingpostsItemList = const []});

  LatestModel copyWith({
    List<TrendingpostsItemModel>? trendingpostsItemList,
  }) {
    return LatestModel(
      trendingpostsItemList:
          trendingpostsItemList ?? this.trendingpostsItemList,
    );
  }
}
