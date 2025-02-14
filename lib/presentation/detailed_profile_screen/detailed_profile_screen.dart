import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import 'bloc/detailed_profile_bloc.dart';
import 'models/detailed_profile_model.dart';

class DetailedProfileScreen extends StatelessWidget {
  const DetailedProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<DetailedProfileBloc>(
      create: (context) => DetailedProfileBloc(
        DetailedProfileState(
          detailedProfileModelObj: DetailedProfileModel(),
        ),
      )..add(DetailedProfileInitialEvent()),
      child: DetailedProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailedProfileBloc, DetailedProfileState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 18.h),
              child: Column(
                children: [
                  _buildProfileSection(context),
                  SizedBox(height: 20.h),
                  const Divider(),
                  SizedBox(height: 30.h),
                  _buildDetailsSection(context),
                  SizedBox(height: 36.h),
                  const Divider(),
                  SizedBox(height: 32.h),
                  _buildAdditionalDetailsSection(context),
                  SizedBox(height: 4.h),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.h,
          bottom: 15.h,
        ),
      ),
      actions: [
        AppbarSubtitleOne(
          text: "lbl_done".tr,
          margin: EdgeInsets.only(
            top: 15.h,
            right: 17.h,
            bottom: 16.h,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_profile".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 20.h),
          Center(
            child: SizedBox(
              height: 126.h,
              width: 124.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse14120x120,
                    height: 120.h,
                    width: 120.h,
                    radius: BorderRadius.circular(60.h),
                    alignment: Alignment.center,
                  ),
                  CustomIconButton(
                    height: 40.h,
                    width: 40.h,
                    decoration: IconButtonStyleHelper.none,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse14DeepPurpleA2001,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDetailsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildEmailRow(
            context,
            emailLabel: "lbl_username".tr,
            emailValue: "lbl_rosalia".tr,
          ),
          SizedBox(height: 28.h),
          _buildEmailRow(
            context,
            emailLabel: "lbl_email".tr,
            emailValue: "lbl_xyz_gmail_com".tr,
          ),
          SizedBox(height: 28.h),
          _buildEmailRow(
            context,
            emailLabel: "lbl_phone".tr,
            emailValue: "msg_12_3456_789_000".tr,
          ),
        ],
      ),
    );
  }

  Widget _buildAdditionalDetailsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          _buildEmailRow(
            context,
            emailLabel: "lbl_gender".tr,
            emailValue: "lbl_female".tr,
          ),
          SizedBox(height: 28.h),
          _buildEmailRow(
            context,
            emailLabel: "lbl_date_of_birth2".tr,
            emailValue: "lbl_21_08_1992".tr,
          ),
        ],
      ),
    );
  }

  Widget _buildEmailRow(
    BuildContext context, {
    required String emailLabel,
    required String emailValue,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          emailLabel,
          style: CustomTextStyles.bodyLargeBluegray400.copyWith(
            color: appTheme.blueGray400,
          ),
        ),
        Text(
          emailValue,
          style: CustomTextStyles.bodyLargeBlack90001.copyWith(
            color: appTheme.black90001,
          ),
        ),
      ],
    );
  }
}
