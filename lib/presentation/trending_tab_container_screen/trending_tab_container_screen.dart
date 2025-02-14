import '../trending_tab_container_screen/widgets/userprofile1_item_widget.dart';
import 'controller/trending_tab_container_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/presentation/messages_page/messages_page.dart';
import 'package:miswan_s_application3/presentation/notifications_page/notifications_page.dart';
import 'package:miswan_s_application3/presentation/profile_page/profile_page.dart';
import 'package:miswan_s_application3/presentation/stories_page/stories_page.dart';
import 'package:miswan_s_application3/presentation/trending_page/trending_page.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_title_searchview.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:miswan_s_application3/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class TrendingTabContainerScreen
    extends GetWidget<TrendingTabContainerController> {
  const TrendingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 25.v),
              _buildUserProfile(),
              SizedBox(height: 30.v),
              _buildTabview(),
              Expanded(
                child: SizedBox(
                  height: 548.v,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [
                      TrendingPage(),
                      TrendingPage(),
                      TrendingPage(),
                      TrendingPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 16.h),
        hintText: "lbl_search".tr,
        controller: controller.searchController,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return SizedBox(
      height: 88.v,
      child: Obx(
        () => ListView.separated(
          padding: EdgeInsets.symmetric(horizontal: 15.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              width: 16.h,
            );
          },
          itemCount: controller.trendingTabContainerModelObj.value
              .userprofile1ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofile1ItemModel model = controller
                .trendingTabContainerModelObj
                .value
                .userprofile1ItemList
                .value[index];
            return Userprofile1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 30.v,
      width: 398.h,
      child: TabBar(
        controller: controller.tabviewController,
        isScrollable: true,
        labelColor: appTheme.deepPurpleA200,
        unselectedLabelColor: appTheme.deepPurple200,
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
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.storiesPage;
      case BottomBarEnum.Streams:
        return "/";
      case BottomBarEnum.Messages:
        return AppRoutes.messagesPage;
      case BottomBarEnum.Notifications:
        return AppRoutes.notificationsPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profilePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.storiesPage:
        return StoriesPage();
      case AppRoutes.messagesPage:
        return MessagesPage();
      case AppRoutes.notificationsPage:
        return NotificationsPage();
      case AppRoutes.profilePage:
        return ProfilePage();
      default:
        return DefaultWidget();
    }
  }
}
