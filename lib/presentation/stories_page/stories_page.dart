import '../stories_page/widgets/livelist1_item_widget.dart';
import '../stories_page/widgets/viewhierarchylist_item_widget.dart';
import 'controller/stories_controller.dart';
import 'models/livelist1_item_model.dart';
import 'models/stories_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_title_searchview.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';

class StoriesPage extends StatelessWidget {
  final StoriesController controller =
      Get.put(StoriesController(StoriesModel().obs)); // Made 'controller' final

  StoriesPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 22.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_stories".tr,
                  style: theme.textTheme.headlineSmall,
                ),
              ),
              SizedBox(height: 24.v),
              _buildLiveList(),
              SizedBox(height: 22.v),
              _buildRizalReynaldhiColumn(),
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_events".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 12.v),
              _buildViewHierarchyList(),
            ],
          ),
        ),
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
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgAdd,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 5.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLiveList() {
    return Align(
      alignment: Alignment.center,
      child: SizedBox(
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
            itemCount:
                controller.storiesModelObj.value.livelist1ItemList.value.length,
            itemBuilder: (context, index) {
              Livelist1ItemModel model = controller
                  .storiesModelObj.value.livelist1ItemList.value[index];
              return Livelist1ItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildRizalReynaldhiColumn() {
    return Align(
      alignment: Alignment.center,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 21.v,
        ),
        decoration: AppDecoration.outlineBlack.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder15,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 3.v),
            Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse21,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(
                    25.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    top: 8.v,
                    bottom: 4.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "lbl_rizal_reynaldhi".tr,
                        style: CustomTextStyles.titleMediumPrimaryMedium,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_35_minutes_ago".tr,
                        style: CustomTextStyles.labelMediumBluegray100,
                      ),
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 6.v,
                  width: 30.h,
                  margin: EdgeInsets.symmetric(vertical: 22.v),
                ),
              ],
            ),
            SizedBox(height: 23.v),
            Container(
              width: 332.h,
              margin: EdgeInsets.only(right: 17.h),
              child: Text(
                "msg_most_people_never".tr,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargePrimary,
              ),
            ),
            SizedBox(height: 20.v),
            Padding(
              padding: EdgeInsets.only(right: 5.h),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFavorite,
                    height: 17.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      top: 5.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 5.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_2200".tr,
                      style: CustomTextStyles.bodySmallPrimary,
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 18.v,
                    width: 19.h,
                    margin: EdgeInsets.only(
                      left: 29.h,
                      top: 4.v,
                      bottom: 3.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 6.v,
                      bottom: 3.v,
                    ),
                    child: Text(
                      "lbl_800".tr,
                      style: CustomTextStyles.bodySmallPrimary,
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettingsPrimary25x54,
                    height: 25.v,
                    width: 54.h,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildViewHierarchyList() {
    return Padding(
      padding: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (
            context,
            index,
          ) {
            return SizedBox(
              height: 1.v,
            );
          },
          itemCount: controller
              .storiesModelObj.value.viewhierarchylistItemList.value.length,
          itemBuilder: (context, index) {
            ViewhierarchylistItemModel model = controller
                .storiesModelObj.value.viewhierarchylistItemList.value[index];
            return ViewhierarchylistItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
