import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/core/utils/validation_functions.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:miswan_s_application3/widgets/custom_elevated_button.dart';
import 'package:miswan_s_application3/widgets/custom_radio_button.dart';
import 'package:miswan_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  SignUpScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.deepPurpleA200,
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(
              bottom: MediaQuery.of(context).viewInsets.bottom,
            ),
            child: Form(
              key: _formKey,
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 32.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "msg_create_a_new_account".tr,
                      style: CustomTextStyles.headlineLargePrimary,
                    ),
                    SizedBox(height: 12.v),
                    Text(
                      "msg_it_s_fast_and_easy".tr,
                      style: CustomTextStyles.bodyLargePrimary,
                    ),
                    SizedBox(height: 24.v),
                    _buildFirstName(),
                    SizedBox(height: 16.v),
                    _buildEmail(),
                    SizedBox(height: 16.v),
                    _buildPhone(),
                    SizedBox(height: 16.v),
                    _buildDateOfBirth(),
                    SizedBox(height: 23.v),
                    Text(
                      "lbl_gender".tr,
                      style: CustomTextStyles.titleMediumPrimary,
                    ),
                    SizedBox(height: 11.v),
                    _buildGenderRadioGroup(),
                    SizedBox(height: 40.v),
                    Container(
                      width: 367.h,
                      margin: EdgeInsets.only(
                        left: 8.h,
                        right: 5.h,
                      ),
                      child: Text(
                        "msg_by_clicking_register".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                    SizedBox(height: 36.v),
                    _buildSignUp(),
                    SizedBox(height: 5.v),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 47.v,
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.fromLTRB(26.h, 10.v, 364.h, 10.v),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildFirstNameRow() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(right: 8.h),
        child: CustomTextFormField(
          controller: controller.firstNameRowController,
          hintText: "lbl_first_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildLastNameRow() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: CustomTextFormField(
          controller: controller.lastNameRowController,
          hintText: "lbl_last_name".tr,
          validator: (value) {
            if (!isText(value)) {
              return "err_msg_please_enter_valid_text".tr;
            }
            return null;
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFirstName() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFirstNameRow(),
        _buildLastNameRow(),
      ],
    );
  }

  /// Section Widget
  Widget _buildEmail() {
    return CustomTextFormField(
      controller: controller.emailController,
      hintText: "lbl_email_id".tr,
      textInputType: TextInputType.emailAddress,
      validator: (value) {
        if (value == null || (!isValidEmail(value, isRequired: true))) {
          return "err_msg_please_enter_valid_email".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildPhone() {
    return CustomTextFormField(
      controller: controller.phoneController,
      hintText: "lbl_phone_no".tr,
      textInputType: TextInputType.phone,
      validator: (value) {
        if (!isValidPhone(value)) {
          return "err_msg_please_enter_valid_phone_number".tr;
        }
        return null;
      },
    );
  }

  /// Section Widget
  Widget _buildDateOfBirth() {
    return CustomTextFormField(
      controller: controller.dateOfBirthController,
      hintText: "lbl_date_of_birth2".tr,
      textInputAction: TextInputAction.done,
      suffix: Container(
        margin: EdgeInsets.fromLTRB(30.h, 13.v, 16.h, 13.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgCalendartoday,
          height: 24.adaptSize,
          width: 24.adaptSize,
        ),
      ),
      suffixConstraints: BoxConstraints(
        maxHeight: 50.v,
      ),
      contentPadding: EdgeInsets.only(
        left: 16.h,
        top: 16.v,
        bottom: 16.v,
      ),
    );
  }

  /// Section Widget
  Widget _buildGenderRadioGroup() {
    return Obx(
      () => Row(
        children: [
          CustomRadioButton(
            text: "lbl_female".tr,
            value: controller.signUpModelObj.value.radioList.value[0],
            groupValue: controller.genderRadioGroup.value,
            padding: EdgeInsets.fromLTRB(8.h, 16.v, 30.h, 16.v),
            onChange: (value) {
              controller.genderRadioGroup.value = value;
            },
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomRadioButton(
              text: "lbl_male".tr,
              value: controller.signUpModelObj.value.radioList.value[1],
              groupValue: controller.genderRadioGroup.value,
              padding: EdgeInsets.fromLTRB(8.h, 16.v, 30.h, 16.v),
              onChange: (value) {
                controller.genderRadioGroup.value = value;
              },
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSignUp() {
    return CustomElevatedButton(
      text: "lbl_sign_up".tr,
      buttonStyle: CustomButtonStyles.fillPrimary,
    );
  }
}
