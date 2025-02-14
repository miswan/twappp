Do's Application1 lib >

presentation





import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../domain/facebookauth/facebook_auth_helper.dart';

import '../../domain/googleauth/google_auth_helper.dart';

import '../../theme/custom_button_style.dart';

import '../../widgets/custom_elevated_button.dart';

import '../../widgets/custom_outlined_button.dart';

import '../d/bloc/onboarding_one_bloc.dart';

import '../d/models/onboarding_one_model.dart';

class OnboardingOneScreen extends StatelessWidget {

const OnboardingOneScreen({Key? key})

: super(

);

key: key,

static Widget builder (BuildContext context) {

return BlocProvider<OnboardingOneBloc>(

create: (context) => OnboardingOneBloc(OnboardingOneState(

)) onboardingOneModelobj: OnboardingOneModel(),

..add(OnboardingOneInitialEvent()),

child: OnboardingOneScreen(),

);

}

@override

Widget build (BuildContext context) {

return BlocBuilder<OnboardingOneBloc, Onboardingonestate>(

builder: (context, state) {

return SafeArea(

child: Scaffold(

backgroundColor: appTheme.deepPurpleA200,

body: SizedBox(

width: double.maxFinite, ],

child: SingleChildScrollView(

child: SizedBox(

width: double.maxFinite,

child: Column(

children: [

CustomImageView(

), width: double.maxFinite,

imagePath: ImageConstant.imgFrame91111, height: 242.h,

SizedBox(height: 52.h), _buildInfoSection(context), SizedBox(height: 4.h)

);

);

), ),

bottomNavigationBar: _buildSocialMediaIcons (context),

/// Section Widget

Widget_buildInfoSection (BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

children: [

SizedBox(

width: double.maxFinite,

child: Column( children: [ Text( maxLines: 2, ),

crossAxisAlignment: CrossAxisAlignment.start,

),

"msg_find_new_friend_connection".tr,

overflow: Textoverflow.ellipsis,

style: CustomTextStyles.headlineLargePrimary.copyWith(

height: 1.50,

SizedBox(height: 10.h),

Text(

"msg_with_billions_of".tr,

maxLines: 4,

overflow: Textoverflow.ellipsis,

style: theme.textTheme.titleMedium!.copyWith(

),

height: 1.50,

),

SizedBox(height: 46.h),

SizedBox(

width: double.maxFinite,

child: Column(

children: [

CustomElevatedButton(

text: "lbl_log_in".tr, buttonStyle: CustomButtonStyles.fillPrimary, onPressed: () {

onTapLogin(context);

},

),

SizedBox(height: 28.h),

CustomOutlinedButton(

height: 50.h,

text: "lbl_sign_up".tr,

buttonStyle: CustomButtonStyles.outlinePrimary, buttonTextStyle: CustomTextStyles.titleMedium18, onPressed: () { onTapSignup(context); },

), SizedBox(height: 46.h), Text( "lbl_or_login_with".tr, style: theme.textTheme.bodyLarge,

);

}

/// Section Widget

height: 24.h,

Widget_buildSocialMediaIcons (BuildContext context) { return Container( width: 132.h, margin: EdgeInsets.only(bottom: 68.h), child: Row( mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ CustomImageView( imagePath: ImageConstant.imgFacebookPrimary, height: 24.h, width: 24.h, onTap: () { onTapImgFacebookone (context); },

), CustomImageView( imagePath: ImageConstant.imgTrashPrimary, height: 24.h, width: 24.h, ),

CustomImageView( imagePath: ImageConstant.imgGooglePrimary, height: 24.h, width: 24.h, onTap: () { onTapImgGoogleone (context);

);

}

/// Navigates to the loginScreen when the action is triggered.

onTapLogin(BuildContext context) { NavigatorService.pushNamed ( AppRoutes.logInScreen, );

}

/// Navigates to the signUpScreen when the action is triggered.

onTapSignup(BuildContext context) {

NavigatorService.pushNamed( AppRoutes.signUpScreen, );

}

onTapImgFacebookone (BuildContext context) async { await FacebookAuthHelper() .facebookSignInProcess() .then((facebookUser) {}) .catchError((onError) { ScaffoldMessenger.of (context) .showSnackBar (SnackBar(content: Text(onError.toString()))); });

}

onTapImgGoogleone (BuildContext context) async { await GoogleAuthHelper().googleSignInProcess().then((googleUser) { if (googleUser != null) { } else { ScaffoldMessenger.of(context) .showSnackBar(SnackBar (content: Text('user data is empty'))); } }).catchError((onError) {

ScaffoldMessenger.of(context)

.showSnackBar (SnackBar(content: Text(onError.toString()))); });

}