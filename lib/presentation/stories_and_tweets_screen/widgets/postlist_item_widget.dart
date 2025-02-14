
import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../theme/custom_button_style.dart';

import '../../../widgets/custom_outlined_button.dart';

import '../models/postlist_item_model.dart';

// ignore_for_file: must_be_immutable

class PostlistItemWidget extends StatelessWidget {

PostlistItemwidget(this.postlistItemModelobj, {key? key})

super( );

key: key,

PostlistItemModel postlistItemModelobj;

@override

Widget build (BuildContext context) {

return SizedBox(

width: double.maxFinite,

child: Column(

children: [

SizedBox(

),

width: double.maxFinite,

child: Divider(),

SizedBox(height: 22.h),

Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric(horizontal: 16.h),

child: Column(

children: [

SizedBox(

width: double.maxFinite,

child: Column(

crossAxisAlignment: CrossAxisAlignment.start, children: [

SizedBox(

width: double.maxFinite,

child: Row(

children: [

Expanded(

child: Row(

children: 「

CustomImageView(

),

imagePath: ImageConstant.imgEllipse12,

height: 50.h,

width: 50.h,

radius: BorderRadius.circular( ), 24.h,

SizedBox(width: 16.h),

Expanded(

child: Align(

alignment: Alignment.bottomLeft,

child: Column(

crossAxisAlignment:

CrossAxisAlignment.start,

children: [

Text(

),

postlistItemModelObj.albertoconnor!, style: theme.textTheme.titleLarge,

SizedBox(height: 6.h),

Text(

postlistItemModelObj.duration!,

style: CustomTextStyles .bodyMediumBluegray400,

),

),

],

),

),

CustomOutlinedButton(

width: 76.h,

text: "lbl_follow".tr,

SizedBox(height: 16.h), SizedBox( postlistItemModelObj.introduceiam!, maxLines: 3,

width: 348.h, child: Text(

overflow: Textoverflow.ellipsis,

style:

CustomTextstyles.bodyLargeBluegray400_1.copyWith( height: 1.50,

),

),

),

SizedBox(height: 16.h),

Container(

width: double.maxFinite, margin: EdgeInsets.only(right: 18.h),

child: Row(

children: [

CustomImageView(

imagePath: ImageConstant.img22,

height: 114.h,

width: 84.h,

radius: BorderRadius.circular(

),

5.h,
SizedBox(width: 8.h),

CustomImageView(

imagePath: ImageConstant.img25,

height: 114.h,

width: 84.h,

radius: BorderRadius.circular( 5.h, ),

),

SizedBox(width: 8.h),

CustomImageView(

height: 114.h,

imagePath: ImageConstant.img411, radius: BorderRadius.circular( 5.h, ),

width: 84.h,

),

SizedBox(width: 8.h), CustomImageView( imagePath: ImageConstant.img16, radius: BorderRadius.circular( 5.h, ),

height: 114.h,

width: 84.h,

),

SizedBox(

SizedBox(height: 16.h),

width: double.maxFinite,

child: Row(

crossAxisAlignment: CrossAxisAlignment.end, children: [

CustomImageView( imagePath: ImageConstant.imgFavoriteDeepPurpleA2001, height: 16.h, width: 18.h,

margin: EdgeInsets.only(bottom: 2.h), ),

Padding( padding: EdgeInsets.only( left: 8.h, bottom: 2.h, ),

child: Text(

postlistItemModelObj.zipcode!, style: CustomTextStyles.bodySmallDeeppurpleA200, ),

),

CustomImageView(

height: 18.h,

imagePath: ImageConstant.imgUserDeepPurpleA2001, alignment: Alignment.center, margin: EdgeInsets.only(left: 28.h),

width: 18.h,

), Padding(

padding: EdgeInsets.only( left: 8.h,

bottom: 2.h,

), child: Text( postlistItemModelObj.eighthundred!, style: CustomTextStyles.bodySmallDeeppurpleA200, ),

),

Spacer(),

CustomImageView( imagePath:

ImageConstant.imgSettingsDeepPurpleA2002,

height: 24.h, width: 54.h, alignment: Alignment.center,