

import 'package:flutter/material.dart';

import '../../core/utils/validation_functions.dart';

import '../../core/app_export.dart';

import '.. /../widgets/app_bar/appbar_title_image.dart';

import '../../theme/custom_button_style.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_elevated_button.dart';

import '../../widgets/custom_text_form_field.dart';

import 'bloc/log_in_bloc.dart';

import 'models/log in model.dart';

// ignore_for_file: must_be_immutable

class LogInScreen extends Statelesswidget {

LogInScreen({Key? key})

super( key: key, );

GlobalKey<FormState> _formkey = GlobalKey FormState>();

static Widget builder (BuildContext context) {

return BlocProvider<LogInBloc>( create: (context) => LogInBloc(LogInState( logInModelobj: LogInModel(), )) ..add(LogInInitialEvent()), child: LogInScreen(), );

body: Form(
@overaide
Widget build(BuildContext context) { return SafeArea( child: Scaffold( backgroundColor: appTheme.deepPurpleA200, resizeToAvoidBottomInset: false, appBar: _buildAppBar (context), key: _formkey, child: Container( width: double.maxFinite, padding: EdgeInsets.symmetric( horizontal: 16.h, vertical: 78.h, ),

child: Column(

children: [

Align( alignment: Alignment.centerLeft, child: Text( "msg_welcome_to_social".tr, style: CustomTextStyles.headlineLargePrimary, ), ), SizedBox(height: 12.h), Align( alignment: Alignment.centerLeft, child: Text( "msg_please_enter_your".tr, style: theme.textTheme.bodyLarge, ),

),

SizedBox(height: 32.h),

BlocSelector<LogInBloc, LogInState, TextEditingController?>(

builder: (context, emailcontroller) {

selector: (state) => state.emailcontroller, return CustomTextFormField( controller: emailcontroller, vertical: 14.h, ),

hintText: "lbl_email_id".tr, textInputType: TextInputType.emailAddress, contentPadding: EdgeInsets.symmetric( horizontal: 16.h,

validator: (value) { if (value == null || (!isValidEmail (value, isRequired: true))) { return "err_msg_please_enter_valid_email".tr;

}

return null;

},

);

},

),

SizedBox(height: 24.h),

BlocBuilder<LogInBloc, LogInState>( builder: (context, state) { return CustomTextFormField( controller: state.passwordController, hintText: "lbl_password".tr, textInputAction: TextInputAction.done, textInputType: TextInputType.visiblePassword, suffix: Inkwell( onTap: () { context.read<LogInBloc>().add( ChangePasswordVisibilityEvent( value: !state.isShowPassword)); }, child: Container( margin: EdgeInsets.symmetric( horizontal: 16.h, vertical: 12.h, ), imagePath: height: 24.h, width: 24.h,

child: CustomImageView(

ImageConstant.imgAntdesigneyeinvisiblefilled,

fit: BoxFit.contain,
suffixConstraints: BoxConstraints(

),

maxHeight: 50.h,

obscureText: state.isShowPassword,

contentPadding: EdgeInsets.symmetric(

),

horizontal: 16.h,

vertical: 12.h,

validator: (value) {

if (value null ||

}

(!isValidPassword (value, isRequired: true))) {

return "err_msg_please_enter_valid_password".tr;

return null;

},

);

),

},

SizedBox(height: 26.h),

Align(

alignment: Alignment.centerRight,

child: GestureDetector(

onTap: () {

}, onTapTxtForgotpassword(context);

child: Text(

"msg_forgot_password".tr,

style: theme.textTheme.bodyLarge, ),

1,

),

),

SizedBox(height: 30.h),

CustomElevatedButton(

), buttonStyle: CustomButtonStyles.fillprimary,

text: "lbl_log_in".tr,

SizedBox(height: 4.h)

/// Section Widget

PreferredSizeWidget_buildAppBar (BuildContext context) {

return CustomAppBar(

height: 44.h,

centerTitle: true,

title: SizedBox(

width: double.maxFinite,

child: AppbarTitleImage(

imagePath: ImageConstant.imgArrowDownPrimary, ),

),

styleType: Style.bgStyle,

);

/// Navigates to the forgotPasswordScreen when the action is triggered.

onTapTxtForgotpassword (BuildContext context) {

NavigatorService.pushNamed(

);

AppRoutes.forgotPasswordScreen,