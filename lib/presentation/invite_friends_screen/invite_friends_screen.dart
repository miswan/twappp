import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/invite_friends_bloc.dart';
import 'models/friendlist_item_model.dart';
import 'models/invite_friends_model.dart';
import 'widgets/friendlist_item_widget.dart';

class InviteFriendsScreen extends StatelessWidget {
  const InviteFriendsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<InviteFriendsBloc>(
      create: (context) => InviteFriendsBloc(
        InviteFriendsState(
          inviteFriendsModelObj: InviteFriendsModel(),
        ),
      )..add(InviteFriendsInitialEvent()),
      child: InviteFriendsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildInviteFriendsHeader(context),
              SizedBox(height: 20.h),
              _buildFriendList(context),
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
        imagePath: ImageConstant.imgCloseDeepPurpleA200,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.h,
          bottom: 15.h,
        ),
        onTap: () {
          onTapCloseone(context);
        },
      ),
      actions: [
        AppbarSubtitle(
          text: "lbl_next".tr,
          margin: EdgeInsets.only(
            top: 15.h,
            right: 17.h,
            bottom: 14.h,
          ),
        ),
      ],
    );
  }

  Widget _buildInviteFriendsHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_invite_friends".tr,
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildFriendList(BuildContext context) {
    return Expanded(
      child: BlocSelector<InviteFriendsBloc, InviteFriendsState,
          InviteFriendsModel?>(
        selector: (state) => state.inviteFriendsModelObj,
        builder: (context, inviteFriendsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 7.0.h),
                child: Divider(
                  height: 2.h,
                  thickness: 2.h,
                  color: appTheme.gray50,
                ),
              );
            },
            itemCount: inviteFriendsModelObj?.friendlistItemList.length ?? 0,
            itemBuilder: (context, index) {
              FriendlistItemModel model =
                  inviteFriendsModelObj?.friendlistItemList[index] ??
                      FriendlistItemModel();
              return FriendlistItemWidget(
                model,
                changeCheckBox: (value) {
                  context.read<InviteFriendsBloc>().add(
                        FriendlistItemEvent(index: index, checkmark: value),
                      );
                },
              );
            },
          );
        },
      ),
    );
  }

  void onTapCloseone(BuildContext context) {
    NavigatorService.goBack();
  }
}
