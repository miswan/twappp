import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/contentcard_item_model.dart';

// ignore_for_file: must_be_immutable

class ContentcardItemWidget extends Statelesswidget { ContentcardItemWidget(this.contentcardItemModelobj, {Key? key, this.onTapProfiledetails}) : super( );

key: key,

ContentcardItemModel contentcardItemModelobj;

VoidCallback? onTapProfiledetails;

@override

Widget build(BuildContext context) {

return SizedBox(

width: 356.h,

child: Column(

children: [

CustomImageView(

),

imagePath: contentcardItemModelobj.twentysevenone!,

height: 540.h,

width: double.maxFinite,

radius: BorderRadius.circular(

),

14.h,

SizedBox(height: 12.h),

SizedBox(

width: double.maxFinite,

child: GestureDetector(

onTap: () {

},

onTapProfiledetails?.call();

child: Row(

children: [

CustomImageView(

), SizedBox(width: 18.h),

imagePath: ImageConstant.imgEllipse11,

height: 50.h,

width: 50.h,

radius: BorderRadius.circular(

24.h,

Expanded(

child: Column(

crossAxisAlignment: CrossAxisAlignment.start, ), contentcardItemModelObj.rosaliaTwo!, style: theme.textTheme.titleLarge,

children: [

Text(

SizedBox(height: 4.h),

Text(

contentcardItemModelObj.duration!,

style: CustomTextStyles.bodyMediumBluegray400,