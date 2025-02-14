part of 'trending_posts_bloc.dart';

/// Represents the state of TrendingPosts in the application.
// ignore_for_file: must_be_immutable
class TrendingPostsState extends Equatable {
  TrendingPostsState({
    this.searchController,
    this.trendingPostsInitialModelObj,
    this.trendingTabModelObj,
    this.trendingPostsModelObj,
  });

  TextEditingController? searchController;
  TrendingPostsInitialModel? trendingPostsInitialModelObj;
  TrendingTabModel? trendingTabModelObj;
  TrendingPostsModel? trendingPostsModelObj;

  @override
  List<Object?> get props => [
        searchController,
        trendingPostsInitialModelObj,
        trendingTabModelObj,
        trendingPostsModelObj,
      ];

  TrendingPostsState copyWith({
    TextEditingController? searchController,
    TrendingPostsInitialModel? trendingPostsInitialModelObj,
    TrendingTabModel? trendingTabModelObj,
    TrendingPostsModel? trendingPostsModelObj,
  }) {
    return TrendingPostsState(
      searchController: searchController ?? this.searchController,
      trendingPostsInitialModelObj:
          trendingPostsInitialModelObj ?? this.trendingPostsInitialModelObj,
      trendingTabModelObj: trendingTabModelObj ?? this.trendingTabModelObj,
      trendingPostsModelObj:
          trendingPostsModelObj ?? this.trendingPostsModelObj,
    );
  }
}
