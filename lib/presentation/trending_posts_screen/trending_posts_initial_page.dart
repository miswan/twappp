
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/appbar_title_searchview.dart';

import '.. /../widgets/app_bar/appbar_trailing_iconbutton.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../daily_new_page/daily_new_page.dart';

import '../discover_page/discover_page.dart';

import '../latest_page/latest_page.dart';

import 'bloc/trending_posts_bloc.dart';

import 'models/trending_posts_initial_model.dart';

import 'trending_tab_page.dart';

class TrendingPostsInitialPage extends Statefulwidget {

const TrendingPostsInitialPage({Key? key})

: super(

);

key: key,

@override

TrendingPostsInitialPagestate createstate() => TrendingPostsInitialPageState();

static Widget builder (BuildContext context) {

return BlocProvider TrendingPostsBloc>(

); child: TrendingPostsInitialPage(),

create: (context) => TrendingPostsBloc(TrendingPostsState( trendingPostsInitialModelObj: TrendingPostsInitialModel(), ))

..add(TrendingPostsInitialEvent()),

}

}

// ignore_for_file: must_be_immutable

class TrendingPostsInitialPageState extends State<TrendingPostsInitialPage>

with TickerProviderStateMixin {

late TabController tabviewController;

@override

Widget build(BuildContext context) {

return Container(

width: double.maxFinite,

decoration: BoxDecoration(

), color: theme.colorscheme.primary,

child: Column(

children: 「

SizedBox(

), width: double.maxFinite, child: _buildAppBar(context),

Expanded(

child : SizedBox(

width: double.maxFinite, mainAxisSize: MainAxisSize.max, crossAxisAlignment: CrossAxisAlignment.start, children: [ SizedBox(height: 26.h), _buildTabview(context), Expanded( child: Container(

child: Column(

child: TabBarView(

controller: tabviewController, children: [

Trending TabPage.builder(context), LatestPage.builder(context), DiscoverPage.builder(context),

DailyNewPage.builder(context)

);

}

@override

void initstate() {

super.initState();

tabviewController TabController(length: 4, vsync: this);

}

/// Section Widget

PreferredSizeWidget_buildAppBar (BuildContext context) {

return CustomAppBar(

title: SizedBox(

width: double.maxFinite,

),

child: BlocSelector<TrendingPostsBloc, TrendingPostsstate, TextEditingController?>(

selector: (state) => state.searchController, builder: (context, searchController) {

},

return AppbarTitleSearchview( margin: EdgeInsets.only(left: 16.h), hintText: "lbl_search".tr,

);

controller: searchController,
actions: [

AppbarTrailingIconbutton(

imagePath: ImageConstant.imgGroup9086,

margin: EdgeInsets.only(

top: 5.h,

right: 19.h,

bottom: 7.h,

),

)

);

}

/// Section Widget

Widget_buildTabview(BuildContext context) {

return Container(

width: 398.h,

margin: EdgeInsets.only(left: 16.h),

child: TabBar(

controller: tabviewController,

isscrollable: true,

tabAlignment: TabAlignment.start,

labelcolor: appTheme.deepPurpleA200,

unselectedLabelColor: appTheme.indigo100,

tabs: [

Tab(

child: Text(

"lbl_trending".tr,

),

),

Tab(

child: Text(

"lbl_latest".tr,

),

),

Tab(

child: Text(

"lbl_discover".tr,

),

),

Tab(

child: Text(

"lbl_daily_new".tr,

),

)

],

),

);

}

}