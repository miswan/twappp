import 'controller/chat_controller.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_title.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_title_circleimage.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_title_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:miswan_s_application3/widgets/custom_elevated_button.dart';
import 'package:miswan_s_application3/widgets/custom_icon_button.dart';
import 'package:miswan_s_application3/widgets/custom_text_form_field.dart';

class ChatScreen extends GetWidget<ChatController> {
  const ChatScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 41.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 152.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 22.h, vertical: 12.v),
                          decoration: AppDecoration.fillDeepPurpleA.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL15),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 3.v),
                                Text("msg_hi_larry_how_are".tr,
                                    style: theme.textTheme.bodyMedium)
                              ])),
                      SizedBox(height: 8.v),
                      _buildDeliveredRow(deliveredText: "lbl_delivered".tr),
                      SizedBox(height: 23.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: 286.h,
                              margin: EdgeInsets.only(right: 96.h),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 20.h, vertical: 8.v),
                              decoration: AppDecoration.fillIndigo.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL15),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(height: 2.v),
                                    Container(
                                        width: 218.h,
                                        margin: EdgeInsets.only(right: 27.h),
                                        child: Text("msg_hello_gerry_i_m".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumHeeboDeeppurpleA200
                                                .copyWith(height: 1.33)))
                                  ]))),
                      SizedBox(height: 24.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: SizedBox(
                              height: 132.v,
                              width: 271.h,
                              child: Stack(
                                  alignment: Alignment.bottomLeft,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.img49,
                                        height: 65.v,
                                        width: 109.h,
                                        radius: BorderRadius.only(
                                            topLeft: Radius.circular(15.h)),
                                        alignment: Alignment.topLeft),
                                    CustomImageView(
                                        imagePath: ImageConstant.img50,
                                        height: 70.v,
                                        width: 112.h,
                                        radius: BorderRadius.only(
                                            bottomLeft: Radius.circular(15.h)),
                                        alignment: Alignment.bottomLeft),
                                    CustomImageView(
                                        imagePath: ImageConstant.img51,
                                        height: 130.v,
                                        width: 160.h,
                                        radius: BorderRadius.horizontal(
                                            right: Radius.circular(15.h)),
                                        alignment: Alignment.centerRight)
                                  ]))),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          height: 45.v,
                          width: 179.h,
                          text: "lbl_wow_awesome".tr,
                          buttonStyle: CustomButtonStyles.fillDeepPurpleATL15,
                          buttonTextStyle: theme.textTheme.bodyMedium!),
                      SizedBox(height: 8.v),
                      _buildDeliveredRow(deliveredText: "lbl_delivered".tr),
                      SizedBox(height: 5.v)
                    ])),
            bottomNavigationBar: _buildCommentRow()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        height: 71.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgCloseDeepPurpleA200,
                    margin: EdgeInsets.symmetric(vertical: 8.v),
                    onTap: () {
                      onTapClose();
                    }),
                AppbarTitle(
                    text: "lbl_garry_willer".tr,
                    margin:
                        EdgeInsets.only(left: 108.h, top: 8.v, bottom: 6.v)),
                AppbarTitleCircleimage(
                    imagePath: ImageConstant.imgEllipse1440x40,
                    margin: EdgeInsets.only(left: 92.h))
              ])),
          SizedBox(height: 29.v),
          SizedBox(width: double.maxFinite, child: Divider())
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildCommentRow() {
    return Padding(
        padding: EdgeInsets.only(left: 16.h, right: 16.h, bottom: 39.v),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Expanded(
              child: CustomTextFormField(
                  controller: controller.commentController,
                  hintText: "lbl_write_a_comment".tr,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.fillGray,
                  fillColor: appTheme.gray10001)),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: CustomIconButton(
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  padding: EdgeInsets.all(13.h),
                  decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
                  child:
                      CustomImageView(imagePath: ImageConstant.imgGroup9143)))
        ]));
  }

  /// Common widget
  Widget _buildDeliveredRow({required String deliveredText}) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(deliveredText,
          style: CustomTextStyles.bodySmallGray60001
              .copyWith(color: appTheme.gray60001)),
      CustomImageView(
          imagePath: ImageConstant.imgSettings,
          height: 10.v,
          width: 15.h,
          margin: EdgeInsets.only(left: 12.h, top: 2.v, bottom: 2.v))
    ]);
  }

  /// Navigates to the previous screen.
  onTapClose() {
    Get.back();
  }
}
