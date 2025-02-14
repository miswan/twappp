import 'controller/trending_posts_controller.dart';
import 'models/trending_posts_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/custom_icon_button.dart';

class TrendingPostsPage extends StatelessWidget {
  final TrendingPostsController controller = Get.put(TrendingPostsController(
      TrendingPostsModel().obs)); // Made 'controller' final

  TrendingPostsPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 21.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    _buildPlaylist(),
                    Padding(
                      padding: EdgeInsets.only(left: 16.h),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(vertical: 16.v),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 34.h),
                                    child: Text(
                                      "lbl_rizal_reynaldhi".tr,
                                      style: CustomTextStyles.labelLargePrimary,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 47.h),
                                    child: Text(
                                      "lbl_35_minutes_ago".tr,
                                      style: CustomTextStyles
                                          .labelMediumBluegray100,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 7.v),
                                CustomImageView(
                                  imagePath: ImageConstant.img32116x183,
                                  height: 116.v,
                                  width: 183.h,
                                ),
                                SizedBox(height: 9.v),
                                Container(
                                  width: 137.h,
                                  margin: EdgeInsets.only(left: 16.h),
                                  child: Text(
                                    "msg_vacation_to_bali".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallPrimary12
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 15.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: _buildClientTestimonials(
                                    text1: "lbl_bali".tr,
                                    text2: "lbl_dreams".tr,
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 16.h),
                                  child: _buildReviews(
                                    zipcodeText: "lbl_2200".tr,
                                    eightHundredText: "lbl_800".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.v),
                          Container(
                            width: 183.h,
                            padding: EdgeInsets.all(16.h),
                            decoration: AppDecoration.outlineBlack.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder15,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(height: 5.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 18.h),
                                    child: Text(
                                      "lbl_rizal_reynaldhi".tr,
                                      style: CustomTextStyles.labelLargePrimary,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 2.v),
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Padding(
                                    padding: EdgeInsets.only(right: 31.h),
                                    child: Text(
                                      "lbl_35_minutes_ago".tr,
                                      style: CustomTextStyles
                                          .labelMediumBluegray100,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 8.v),
                                SizedBox(
                                  width: 137.h,
                                  child: Text(
                                    "msg_vacation_to_bali".tr,
                                    maxLines: 6,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodySmallPrimary12
                                        .copyWith(
                                      height: 1.50,
                                    ),
                                  ),
                                ),
                                SizedBox(height: 11.v),
                                _buildClientTestimonials(
                                  text1: "lbl_bali".tr,
                                  text2: "lbl_dreams".tr,
                                ),
                                SizedBox(height: 18.v),
                                _buildReviews(
                                  zipcodeText: "lbl_2200".tr,
                                  eightHundredText: "lbl_800".tr,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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

  /// Section Widget
  Widget _buildPlaylist() {
    return Column(
      children: [
        Container(
          width: 183.h,
          padding: EdgeInsets.all(16.h),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse2135x35,
                    height: 35.adaptSize,
                    width: 35.adaptSize,
                    radius: BorderRadius.circular(
                      17.h,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 10.h,
                      top: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_rizal_reynaldhi".tr,
                          style: CustomTextStyles.labelLargePrimary,
                        ),
                        SizedBox(height: 2.v),
                        Text(
                          "lbl_35_minutes_ago".tr,
                          style: CustomTextStyles.labelMediumBluegray100,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9.v),
              SizedBox(
                width: 137.h,
                child: Text(
                  "msg_vacation_to_bali".tr,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPrimary12.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 11.v),
              _buildClientTestimonials(
                text1: "lbl_bali".tr,
                text2: "lbl_dreams".tr,
              ),
              SizedBox(height: 18.v),
              _buildReviews(
                zipcodeText: "lbl_2200".tr,
                eightHundredText: "lbl_800".tr,
              ),
            ],
          ),
        ),
        SizedBox(height: 16.v),
        Container(
          padding: EdgeInsets.symmetric(vertical: 16.v),
          decoration: AppDecoration.outlineBlack.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder15,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 34.h),
                  child: Text(
                    "lbl_rizal_reynaldhi".tr,
                    style: CustomTextStyles.labelLargePrimary,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 47.h),
                  child: Text(
                    "lbl_35_minutes_ago".tr,
                    style: CustomTextStyles.labelMediumBluegray100,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              SizedBox(
                height: 116.v,
                width: 183.h,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.img32,
                      height: 116.v,
                      width: 183.h,
                      alignment: Alignment.center,
                    ),
                    CustomIconButton(
                      height: 42.v,
                      width: 41.h,
                      alignment: Alignment.center,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgOverflowMenu,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 9.v),
              Container(
                width: 137.h,
                margin: EdgeInsets.only(left: 16.h),
                child: Text(
                  "msg_vacation_to_bali".tr,
                  maxLines: 6,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallPrimary12.copyWith(
                    height: 1.50,
                  ),
                ),
              ),
              SizedBox(height: 15.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: _buildClientTestimonials(
                  text1: "lbl_bali".tr,
                  text2: "lbl_dreams".tr,
                ),
              ),
              SizedBox(height: 18.v),
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: _buildReviews(
                  zipcodeText: "lbl_2200".tr,
                  eightHundredText: "lbl_800".tr,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildClientTestimonials({
    required String text1,
    required String text2,
  }) {
    return Row(
      children: [
        Text(
          text1,
          style: theme.textTheme.bodyMedium!.copyWith(
            color: theme.colorScheme.primary,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 24.h),
          child: Text(
            text2,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildReviews({
    required String zipcodeText,
    required String eightHundredText,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 17.v,
          width: 19.h,
          margin: EdgeInsets.only(top: 1.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 1.v,
          ),
          child: Text(
            zipcodeText,
            style: CustomTextStyles.bodySmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgUser,
          height: 18.v,
          width: 19.h,
          margin: EdgeInsets.only(left: 29.h),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 8.h,
            top: 1.v,
          ),
          child: Text(
            eightHundredText,
            style: CustomTextStyles.bodySmallPrimary.copyWith(
              color: theme.colorScheme.primary,
            ),
          ),
        ),
      ],
    );
  }
}
