
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../theme/custom_button_style.dart';

import '../../../widgets/custom_outlined_button.dart';

import '../models/friendslist_item_model.dart';

// ignore_for_file: must_be_immutable

class FriendslistItemWidget extends StatelessWidget {

FriendslistItemWidget(this.friendslistItemModelobj, {Key? key})

: super(

key: key,

);

FriendslistItemModel friendslistItemModelobj;

@override

Widget build (BuildContext context) {

return SizedBox(

width: double.maxFinite,

child: Column(

children: [

Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric(horizontal: 16.h),

child: Column(

children: [

SizedBox(

width: double.maxFinite,

child: Row(

mainAxisAlignment: MainAxisAlignment.center,

children: [

CustomImageView(

),

imagePath: ImageConstant.imgEllipse5,

height: 50.h,

width: 50.h,

radius: BorderRadius.circular(

),

24.h,

SizedBox(width: 24.h),

Expanded(

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Text(

), style: theme.textTheme.titleLarge,

friendslistItemModelObj.kevinallsrub!,

SizedBox(height: 6.h),

Text(

friendslistItemModelObj.yourefriends!,

style:

CustomTextStyles.bodyMediumPrimaryContainer,

),

SizedBox(width: 24.h),

_buildFollowButtonKevin (context)

), width: double.maxFinite,

),

SizedBox(height: 14.h),

SizedBox(

child: Divider(),

)

1,

);

/// Section Widget

Widget_buildFollowButtonKevin(BuildContext context) {

return CustomOutlinedButton(

width: 76.h,

text: "lbl_follow".tr,

);