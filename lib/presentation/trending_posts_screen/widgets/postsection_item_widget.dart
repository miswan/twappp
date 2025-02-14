

import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/postsection_item_model.dart';

// ignore_for_file: must_be_immutable

class PostsectionItemWidget extends Statelesswidget {

PostsectionItemWidget(this.postsectionItemModelobj, {Key? key})

: super(

key: key,

);

PostsectionItemModel postsectionItemModelobj;

@override

Widget build(BuildContext context) {

return Container(

width: 182.h,

padding: EdgeInsets.symmetric(

horizontal:

16.h,

vertical: 14.h,

),

decoration: BoxDecoration(

color: appTheme.deepPurpleA200,

borderRadius: BorderRadiusstyle.roundedBorder14,

boxShadow: [

BoxShadow(

color: appTheme.black90001.withOpacity(0.1),

spreadRadius: 2.h,

blurRadius: 2.h,

offset: offset(

2,

1,

),

)

],

),
child: Column(

mainAxisSize: MainAxisSize.min,

crossAxisAlignment: CrossAxisAlignment.start,

mainAxisAlignment: MainAxisAlignment.center,

children: [

SizedBox(

width: double.maxFinite,

child: Row

children: [

CustomImageView(

),

imagePath: ImageConstant.imgEllipse2134x34,

height: 34.h,

width: 34.h,

radius: BorderRadius.circular(

),

16.h,

SizedBox(width: 10.h),

Expanded(

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Text(

), style: CustomTextStyles.labelLargePrimary,

postsectionItemModelObj.rizalreynaldhi!,

SizedBox(height: 2.h),

Text(

postsectionItemModelObj.duration!,

style: CustomTextStyles.labelMediumBluegray100,

),

SizedBox(height: 12.h),

Text(

),

postsectionItemModelObj.description!,

maxLines: 6,

overflow: Textoverflow.ellipsis,

style: theme.textTheme.bodySmall!.copywith(

),

height: 1.50,

SizedBox(height: 12.h),

SizedBox(

width: double.maxFinite,

child: Row(

children: 「

Text(

) , Padding(

postsectionItemModelObj.bali!,

style: theme.textTheme.bodyMedium,

padding: EdgeInsets.only(left: 24.h),

child: Text(

),

postsectionItemModelObj.dreams!,

style: theme.textTheme.bodyMedium,

),

SizedBox(height: 12.h),

SizedBox(

width: double.maxFinite,

child: Row(

children: 「

CustomImageView(

),

imagePath: ImageConstant.imgFavoritePrimary,

height: 16.h,

width: 18.h,

Padding(

padding: EdgeInsets.only(left: 8.h),

child: Text(

postsectionItemModelObj.zipcode!,

style: theme.textTheme.bodySmall,

),

),

CustomImageView( imagePath: ImageConstant.imgUserPrimary,

height: 18.h,

width: 18.h,

),

margin: EdgeInsets.only(left: 28.h),

Align(

alignment: Alignment.bottomCenter,

child: Padding(

padding: EdgeInsets.only(left: 8.h),

child: Text(

),

postsectionItemModelObj.eighthundred!,

style: theme.textTheme.bodySmall,