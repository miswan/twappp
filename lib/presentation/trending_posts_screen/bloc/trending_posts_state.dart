
part of 'trending_posts_state.dart';

/// Represents the state of TrendingPosts in the application.

// ignore_for_file: must_be_immutable

class TrendingPostsState extends Equatable {

TrendingPostsState(

{this.searchController,

this.trendingPostsInitialModelobj,

this.trendingTabModelobj,

this.trendingPostsModelObj});

TextEditingController? searchController;

TrendingPostsModel? trendingPostsModelobj;

TrendingPostsInitialModel? trendingPostsInitialModelObj;

TrendingTabModel? trendingTabModelObj;

@override

List<Object?> get props => [

searchController,

trendingPostsInitialModelobj,

trendingTabModelobj,

trendingPostsModelobj

TrendingPostsstate copywith({

TextEditingController? searchController,

TrendingPostsInitialModel? trendingPostsInitialModelobj,

TrendingTabModel? trendingTabModelobj,

TrendingPostsModel? trendingPostsModelobj,

}) {

return TrendingPostsState(

searchController: searchController ?? this.searchController,

trendingPostsInitialModelobj:

trendingPostsInitialModelObj ?? this.trendingPostsInitialModelObj,

trendingTabModelObj: trendingTabModelobj ?? this.trendingTabModelObj,

trendingPostsModelobj:

trendingPostsModelobj ?? this.trendingPostsModelObj,

);

}

}