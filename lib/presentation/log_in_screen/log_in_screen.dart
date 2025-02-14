import 'package:flutter/material.dart';
import '../../core/utils/validation_functions.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_image.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'bloc/log_in_bloc.dart';
import 'models/log_in_model.dart';

class LogInScreen extends StatelessWidget {
  LogInScreen({Key? key}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LogInBloc>(
      create: (context) => LogInBloc(LogInState(logInModelObj: LogInModel()))
        ..add(LogInInitialEvent()),
      child: LogInScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 78.h,
            ),
            child: Column(
              children: [
                _buildWelcomeSection(context),
                SizedBox(height: 32.h),
                _buildEmailField(context),
                SizedBox(height: 24.h),
                _buildPasswordField(context),
                SizedBox(height: 26.h),
                _buildForgotPasswordSection(context),
                SizedBox(height: 30.h),
                _buildLoginButton(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildWelcomeSection(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_welcome_to_social".tr,
          style: CustomTextStyles.headlineLargePrimary,
        ),
        SizedBox(height: 12.h),
        Text(
          "msg_please_enter_your".tr,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildEmailField(BuildContext context) {
    return BlocSelector<LogInBloc, LogInState, TextEditingController?>(
      selector: (state) => state.emailController,
      builder: (context, emailController) {
        return CustomTextFormField(
          controller: emailController,
          hintText: "lbl_email_id".tr,
          textInputType: TextInputType.emailAddress,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.h,
          ),
          validator: (value) {
            if (value == null || (!isValidEmail(value, isRequired: true))) {
              return "err_msg_please_enter_valid_email".tr;
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildPasswordField(BuildContext context) {
    return BlocBuilder<LogInBloc, LogInState>(
      builder: (context, state) {
        return CustomTextFormField(
          controller: state.passwordController,
          hintText: "lbl_password".tr,
          textInputType: TextInputType.visiblePassword,
          textInputAction: TextInputAction.done,
          obscureText: state.isShowPassword,
          suffix: InkWell(
            onTap: () {
              context.read<LogInBloc>().add(
                    ChangePasswordVisibilityEvent(
                      value: !state.isShowPassword,
                    ),
                  );
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 12.h,
              ),
              child: CustomImageView(
                imagePath: ImageConstant.imgAntdesigneyeinvisiblefilled,
                height: 24.h,
                width: 24.h,
                fit: BoxFit.contain,
              ),
            ),
          ),
          validator: (value) {
            if (value == null || (!isValidPassword(value, isRequired: true))) {
              return "err_msg_please_enter_valid_password".tr;
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildForgotPasswordSection(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: GestureDetector(
        onTap: () => onTapForgotPassword(context),
        child: Text(
          "msg_forgot_password".tr,
          style: theme.textTheme.bodyLarge,
        ),
      ),
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return CustomElevatedButton(
      text: "lbl_log_in".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 44.h,
      centerTitle: true,
      title: SizedBox(
        width: double.maxFinite,
        child: AppbarTitleImage(
          imagePath: ImageConstant.imgArrowDownPrimary,
        ),
      ),
      styleType: Style.bgStyle,
    );
  }

  void onTapForgotPassword(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.forgotPasswordScreen);
  }
}
