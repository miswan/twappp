import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../daily_new_page/daily_new_page.dart';
import '../discover_page/discover_page.dart';
import '../latest_page/latest_page.dart';
import 'bloc/trending_posts_bloc.dart';
import 'models/trending_posts_initial_model.dart';
import 'trending_tab_page.dart';

class TrendingPostsInitialPage extends StatefulWidget {
  const TrendingPostsInitialPage({Key? key}) : super(key: key);

  @override
  TrendingPostsInitialPageState createState() =>
      TrendingPostsInitialPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<TrendingPostsBloc>(
      create: (context) => TrendingPostsBloc(TrendingPostsState(
        trendingPostsInitialModelObj: TrendingPostsInitialModel(),
      ))
        ..add(TrendingPostsInitialEvent()),
      child: TrendingPostsInitialPage(),
    );
  }
}

class TrendingPostsInitialPageState extends State<TrendingPostsInitialPage>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabviewController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: theme.colorScheme.primary,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: _buildAppBar(context),
          ),
          SizedBox(height: 26.h),
          _buildTabview(context),
          Expanded(
            child: TabBarView(
              controller: tabviewController,
              children: [
                TrendingTabPage.builder(context),
                LatestPage.builder(context),
                DiscoverPage.builder(context),
                DailyNewPage.builder(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<TrendingPostsBloc, TrendingPostsState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.only(
            top: 5.h,
            right: 19.h,
            bottom: 7.h,
          ),
        ),
      ],
    );
  }

  Widget _buildTabview(BuildContext context) {
    return Container(
      width: 398.h,
      margin: EdgeInsets.only(left: 16.h),
      child: TabBar(
        controller: tabviewController,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        labelColor: appTheme.deepPurpleA200,
        unselectedLabelColor: appTheme.indigo100,
        tabs: [
          Tab(child: Text("lbl_trending".tr)),
          Tab(child: Text("lbl_latest".tr)),
          Tab(child: Text("lbl_discover".tr)),
          Tab(child: Text("lbl_daily_new".tr)),
        ],
      ),
    );
  }
}
