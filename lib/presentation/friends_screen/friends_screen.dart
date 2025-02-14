import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'bloc/friends_bloc.dart';
import 'models/friends_model.dart';
import 'models/friendslist_item_model.dart';
import 'widgets/friendslist_item_widget.dart';

class FriendsScreen extends StatelessWidget {
  const FriendsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<FriendsBloc>(
      create: (context) =>
          FriendsBloc(FriendsState(friendsModelObj: FriendsModel()))
            ..add(FriendsInitialEvent()),
      child: const FriendsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildFriendsSection(context),
              SizedBox(height: 22.h),
              _buildFriendsList(context),
            ],
          ),
        ),
      ),
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
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPersonAddAlt1,
          margin: EdgeInsets.only(
            top: 13.h,
            right: 16.h,
            bottom: 15.h,
          ),
        ),
      ],
    );
  }

  Widget _buildFriendsSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_friends".tr,
            style: theme.textTheme.headlineLarge,
          ),
          SizedBox(height: 12.h),
          BlocSelector<FriendsBloc, FriendsState, TextEditingController?>(
            selector: (state) => state.searchController,
            builder: (context, searchController) {
              return CustomSearchView(
                controller: searchController,
                hintText: "lbl_search".tr,
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.h,
                ),
              );
            },
          ),
          SizedBox(height: 24.h),
          Text(
            "msg_connect_to_your".tr,
            style: CustomTextStyles.titleLargeDeeppurpleA200,
          ),
          SizedBox(height: 28.h),
          _buildSocialIcons(),
          SizedBox(height: 26.h),
          Text(
            "lbl_recommeded".tr,
            style: CustomTextStyles.titleLargeDeeppurpleA200,
          ),
        ],
      ),
    );
  }

  Widget _buildSocialIcons() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrashBlue5001,
            height: 50.h,
            width: 50.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFacebookBlueA4001,
            height: 50.h,
            width: 50.h,
            margin: EdgeInsets.only(left: 30.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUpYellowA200,
            height: 50.h,
            width: 50.h,
            margin: EdgeInsets.only(left: 30.h),
          ),
          const Spacer(flex: 26),
          CustomImageView(
            imagePath: ImageConstant.imgWarningRed700,
            height: 50.h,
            width: 50.h,
          ),
          const Spacer(flex: 73),
        ],
      ),
    );
  }

  Widget _buildFriendsList(BuildContext context) {
    return Expanded(
      child: BlocSelector<FriendsBloc, FriendsState, FriendsModel?>(
        selector: (state) => state.friendsModelObj,
        builder: (context, friendsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0.h),
                child: Divider(
                  height: 2.h,
                  thickness: 2.h,
                  color: appTheme.gray50,
                ),
              );
            },
            itemCount: friendsModelObj?.friendslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              FriendslistItemModel model =
                  friendsModelObj?.friendslistItemList[index] ??
                      FriendslistItemModel();
              return FriendslistItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
