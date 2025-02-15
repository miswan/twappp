import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
                _buildPhoneField(context),
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
          "msg_enter_phone_number".tr,
          style: theme.textTheme.bodyLarge,
        ),
      ],
    );
  }

  Widget _buildPhoneField(BuildContext context) {
    return BlocSelector<LogInBloc, LogInState, TextEditingController?>(
      selector: (state) => state.phoneController,
      builder: (context, phoneController) {
        return CustomTextFormField(
          controller: phoneController,
          hintText: "lbl_phone_number".tr,
          textInputType: TextInputType.phone,
          prefix: Container(
            margin: EdgeInsets.only(
              right: 8.h,
              left: 16.h,
            ),
            child: Text(
              "+1",
              style: theme.textTheme.bodyLarge,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.h,
          ),
          validator: (value) {
            if (value == null || value.isEmpty) {
              return "err_msg_please_enter_valid_phone".tr;
            }
            return null;
          },
        );
      },
    );
  }

  Widget _buildLoginButton(BuildContext context) {
    return BlocConsumer<LogInBloc, LogInState>(
      listener: (context, state) {
        if (state.verificationId != null) {
          NavigatorService.pushNamed(
            AppRoutes.verificationScreen,
            arguments: state.verificationId,
          );
        }
      },
      builder: (context, state) {
        return CustomElevatedButton(
          text: "lbl_continue".tr,
          buttonStyle: CustomButtonStyles.fillPrimary,
          onPressed: () {
            if (_formKey.currentState?.validate() ?? false) {
              context.read<LogInBloc>().add(SendOtpEvent());
            }
          },
          isLoading: state.isLoading,
        );
      },
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
}
