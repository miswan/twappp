import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/profile_bloc.dart';
import 'models/postlist1_item_model.dart';
import 'models/profile_model.dart';
import 'widgets/postlist1_item_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileBloc>(
      create: (context) => ProfileBloc(
        ProfileState(
          profileModelObj: ProfileModel(),
        ),
      )..add(ProfileInitialEvent()),
      child: const ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildProfileOverview(context),
              SizedBox(height: 24.h),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              ),
              SizedBox(height: 24.h),
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.symmetric(horizontal: 16.h),
                  child: Column(
                    children: [
                      _buildPostList(context),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgLink,
          margin: EdgeInsets.only(
            top: 13.h,
            right: 16.h,
            bottom: 15.h,
          ),
        ),
      ],
    );
  }

  Widget _buildProfileOverview(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => onTapProfileDetails(context),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse14,
                  height: 80.h,
                  width: 80.h,
                  radius: BorderRadius.circular(40.h),
                ),
                SizedBox(width: 24.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_rosalia".tr,
                      style: CustomTextStyles.headlineLargeBlack90001,
                    ),
                    SizedBox(height: 8.h),
                    Text(
                      "lbl_rose23".tr,
                      style: CustomTextStyles.bodyMediumBluegray400,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 26.h),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 8.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildStatColumn("lbl_post".tr, "lbl_75".tr),
                _buildStatColumn("lbl_following".tr, "lbl_3400".tr),
                _buildStatColumn("lbl_followers".tr, "lbl_6500".tr),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildStatColumn(String label, String value) {
    return Column(
      children: [
        Text(
          label,
          style: CustomTextStyles.titleLargeGray500,
        ),
        SizedBox(height: 8.h),
        Text(
          value,
          style: CustomTextStyles.titleLargeDeeppurpleA200_1,
        ),
      ],
    );
  }

  Widget _buildPostList(BuildContext context) {
    return Expanded(
      child: BlocSelector<ProfileBloc, ProfileState, ProfileModel?>(
        selector: (state) => state.profileModelObj,
        builder: (context, profileModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) => SizedBox(height: 16.h),
            itemCount: profileModelObj?.postlist1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Postlist1ItemModel model =
                  profileModelObj?.postlist1ItemList[index] ??
                      Postlist1ItemModel();
              return Postlist1ItemWidget(model);
            },
          );
        },
      ),
    );
  }

  void onTapProfileDetails(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.detailedProfileScreen,
    );
  }
}
