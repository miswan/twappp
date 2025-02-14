import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_export.dart';
import '../../domain/facebookauth/facebook_auth_helper.dart';
import '../../domain/googleauth/google_auth_helper.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../d/bloc/onboarding_one_bloc.dart';
import '../d/models/onboarding_one_model.dart';

class OnboardingOneScreen extends StatelessWidget {
  const OnboardingOneScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OnboardingOneBloc>(
      create: (context) => OnboardingOneBloc(
        OnboardingOneState(onboardingOneModelObj: OnboardingOneModel()),
      )..add(OnboardingOneInitialEvent()),
      child: const OnboardingOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OnboardingOneBloc, OnboardingOneState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.deepPurpleA200,
            body: SizedBox(
              width: double.maxFinite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame91111,
                      width: double.maxFinite,
                      height: 242.h,
                    ),
                    SizedBox(height: 52.h),
                    _buildInfoSection(context),
                    SizedBox(height: 4.h),
                  ],
                ),
              ),
            ),
            bottomNavigationBar: _buildSocialMediaIcons(context),
          ),
        );
      },
    );
  }

  Widget _buildInfoSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          Text(
            "msg_find_new_friend_connection".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.headlineLargePrimary.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            "msg_with_billions_of".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.titleMedium!.copyWith(
              height: 1.50,
            ),
          ),
          SizedBox(height: 46.h),
          CustomElevatedButton(
            text: "lbl_log_in".tr,
            buttonStyle: CustomButtonStyles.fillPrimary,
            onPressed: () => onTapLogin(context),
          ),
          SizedBox(height: 28.h),
          CustomOutlinedButton(
            height: 50.h,
            text: "lbl_sign_up".tr,
            buttonStyle: CustomButtonStyles.outlinePrimary,
            buttonTextStyle: CustomTextStyles.titleMedium18,
            onPressed: () => onTapSignup(context),
          ),
          SizedBox(height: 46.h),
          Text(
            "lbl_or_login_with".tr,
            style: theme.textTheme.bodyLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildSocialMediaIcons(BuildContext context) {
    return Container(
      width: 132.h,
      margin: EdgeInsets.only(bottom: 68.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFacebookPrimary,
            height: 24.h,
            width: 24.h,
            onTap: () => onTapImgFacebookone(context),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgTrashPrimary,
            height: 24.h,
            width: 24.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgGooglePrimary,
            height: 24.h,
            width: 24.h,
            onTap: () => onTapImgGoogleone(context),
          ),
        ],
      ),
    );
  }

  void onTapLogin(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.logInScreen);
  }

  void onTapSignup(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.signUpScreen);
  }

  Future<void> onTapImgFacebookone(BuildContext context) async {
    try {
      await FacebookAuthHelper().facebookSignInProcess();
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    }
  }

  Future<void> onTapImgGoogleone(BuildContext context) async {
    try {
      final googleUser = await GoogleAuthHelper().googleSignInProcess();
      if (googleUser == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('User data is empty')),
        );
      }
    } catch (error) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(error.toString())),
      );
    }
  }
}
