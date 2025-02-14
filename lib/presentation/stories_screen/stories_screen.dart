import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';

import '../../widgets/app_bar/appbar_title_searchview.dart';

import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_elevated_button.dart';

import '../z/bloc/stories_bloc.dart';

import '../z/models/listmerry_new_item_model.dart';

import '../z/models/stories_item_model.dart';

import '../z/models/stories_model.dart';

import '../z/widgets/listmerry_new_item_widget.dart';

import '../z/widgets/stories_item_widget.dart';

class StoriesScreen extends StatelessWidget {
  const StoriesScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesBloc>(
      create: (context) => StoriesBloc(
        StoriesState(storiesModelObj: StoriesModel()),
      )..add(StoriesInitialEvent()),
      child: StoriesScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBarSection(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 22.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildStoriesSection(context),
              SizedBox(height: 24.h),
              _buildPostSection(context),
              SizedBox(height: 24.h),
              _buildEventsSection(context),
              SizedBox(height: 4.h),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBarSection(BuildContext context) {
    return CustomAppBar(
      title: SizedBox(
        width: double.maxFinite,
        child: BlocSelector<StoriesBloc, StoriesState, TextEditingController?>(
          selector: (state) => state.searchController,
          builder: (context, searchController) {
            return AppbarTitleSearchview(
              margin: EdgeInsets.only(left: 16.h),
              hintText: "lbl_search".tr,
              controller: searchController,
            );
          },
        ),
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAdd,
          margin: EdgeInsets.only(
            top: 5.h,
            right: 19.h,
            bottom: 7.h,
          ),
        ),
      ],
    );
  }

  Widget _buildStoriesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_stories".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 20.h),
          Container(
            margin: EdgeInsets.only(right: 16.h),
            width: double.maxFinite,
            child: BlocSelector<StoriesBloc, StoriesState, StoriesModel?>(
              selector: (state) => state.storiesModelObj,
              builder: (context, storiesModelObj) {
                return SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Wrap(
                    direction: Axis.horizontal,
                    spacing: 16.h,
                    children: List.generate(
                      storiesModelObj?.storiesItemList.length ?? 0,
                      (index) {
                        StoriesItemModel model =
                            storiesModelObj?.storiesItemList[index] ??
                                StoriesItemModel();
                        return StoriesItemWidget(model: model);
                      },
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostSection(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 22.h),
                decoration: BoxDecoration(
                  color: appTheme.deepPurpleA200,
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.black90001.withOpacity(0.1),
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(2, 2),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse21,
                          height: 50.h,
                          width: 50.h,
                          radius: BorderRadius.circular(24.h),
                        ),
                        SizedBox(width: 16.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "lbl_rizal_reynaldhi".tr,
                              style: CustomTextStyles.titleMedium18,
                            ),
                            SizedBox(height: 2.h),
                            Text(
                              "lbl_35_minutes_ago".tr,
                              style: CustomTextStyles.labelMediumBluegray100,
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 16.h),
                    Text(
                      "msg_most_people_never".tr,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodyLarge!.copyWith(height: 1.50),
                    ),
                    SizedBox(height: 16.h),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFavoritePrimary,
                          height: 16.h,
                          width: 18.h,
                          margin: EdgeInsets.only(bottom: 2.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                          child: Text(
                            "lbl_2200".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgUserPrimary,
                          height: 18.h,
                          width: 18.h,
                          alignment: Alignment.center,
                          margin: EdgeInsets.only(left: 28.h),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                          child: Text(
                            "lbl_800".tr,
                            style: theme.textTheme.bodySmall,
                          ),
                        ),
                        Spacer(),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsPrimary1,
                          height: 24.h,
                          width: 54.h,
                          alignment: Alignment.center,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildEventsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_events".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 16.h),
          SizedBox(
            height: 200.h,
            width: 398.h,
            child: BlocSelector<StoriesBloc, StoriesState, StoriesModel?>(
              selector: (state) => state.storiesModelObj,
              builder: (context, storiesModelObj) {
                return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: storiesModelObj?.listmerryNewItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ListmerryNewItemModel model =
                        storiesModelObj?.listmerryNewItemList[index] ??
                            ListmerryNewItemModel();
                    return ListmerryNewItemWidget(model: model);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
