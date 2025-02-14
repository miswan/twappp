import 'controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/custom_elevated_button.dart';
import 'package:miswan_s_application3/widgets/custom_outlined_button.dart';
import 'package:miswan_s_application3/domain/facebookauth/facebook_auth_helper.dart';

class LoginScreen extends GetWidget<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildMainStack(),
                  SizedBox(height: 75.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Container(
                          width: 343.h,
                          margin: EdgeInsets.only(left: 16.h, right: 54.h),
                          child: Text("msg_find_new_friend_connection".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.headlineLargePrimary
                                  .copyWith(height: 1.06)))),
                  SizedBox(height: 9.v),
                  Container(
                      width: 370.h,
                      margin: EdgeInsets.only(left: 16.h, right: 27.h),
                      child: Text("msg_with_billions_of".tr,
                          maxLines: 4,
                          overflow: TextOverflow.ellipsis,
                          style: CustomTextStyles.bodyLargePrimary)),
                  SizedBox(height: 52.v),
                  Text("lbl_or_login_with".tr,
                      style: CustomTextStyles.bodyLargePrimary),
                  SizedBox(height: 22.v),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgFacebookPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        onTap: () {
                          onTapImgFacebook();
                        }),
                    CustomImageView(
                        imagePath: ImageConstant.imgTrashPrimary,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 30.h)),
                  ]),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                      text: "lbl_log_in".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      buttonStyle: CustomButtonStyles.fillPrimary),
                  SizedBox(height: 28.v),
                  CustomOutlinedButton(
                      height: 50.v,
                      text: "lbl_sign_up".tr,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      buttonStyle: CustomButtonStyles.outlinePrimaryTL25,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumPrimaryMedium),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildMainStack() {
    return SizedBox(
        height: 243.v,
        width: double.maxFinite,
        child: Stack(alignment: Alignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle3801,
              height: 158.v,
              width: 8.h,
              radius: BorderRadius.circular(4.h),
              alignment: Alignment.bottomRight),
          Align(
              alignment: Alignment.center,
              child: Container(
                  height: 243.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment(-0.5, 0),
                          end: Alignment(-0.5, 1),
                          colors: [
                        appTheme.deepPurpleA200F2,
                        appTheme.deepPurpleA200.withOpacity(0.95)
                      ])))),
          Align(
              alignment: Alignment.topLeft,
              child:
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3799,
                    height: 158.v,
                    width: 8.h,
                    radius: BorderRadius.circular(4.h),
                    margin: EdgeInsets.only(top: 32.v, bottom: 43.v)),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3799158x122,
                    height: 158.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin:
                        EdgeInsets.only(left: 8.h, top: 13.v, bottom: 62.v)),
                Padding(
                    padding: EdgeInsets.only(left: 8.h),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle3803,
                          height: 67.v,
                          width: 122.h,
                          radius: BorderRadius.circular(12.h)),
                      SizedBox(height: 8.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle3800,
                          height: 158.v,
                          width: 122.h,
                          radius: BorderRadius.circular(12.h))
                    ])),
                CustomImageView(
                    imagePath: ImageConstant.imgRectangle3802,
                    height: 158.v,
                    width: 122.h,
                    radius: BorderRadius.circular(12.h),
                    margin: EdgeInsets.only(left: 8.h, top: 38.v, bottom: 37.v))
              ]))
        ]));
  }

  onTapImgFacebook() async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      // Handle successful sign-in
      Get.offNamed(
          AppRoutes.chatScreen); // This will navigate to the HomeScreen
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }
}
