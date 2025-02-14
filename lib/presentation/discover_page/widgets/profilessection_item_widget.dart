

import '../../../core/app_export.dart'; 

import 'package:flutter/material.dart';

import '../models/profilessection_item_model.dart';

// ignore_for_file: must_be_immutable

class ProfilessectionItemwidget extends Statelesswidget {

ProfilessectionItemWidget(this.profilessectionItemModelobj, {Key? key})

: super(

key: key,

);

ProfilessectionItemModel profilessectionItemModelobj;

@override

Widget build (BuildContext context) {

return SizedBox(

height: 178.h,

width: 146.h,

child: Stack(

alignment: Alignment.center,

children: [

CustomImageView(

),

imagePath: profilessectionItemModelObj.nineteenone!,

height: 178.h,

width: double.maxFinite,

radius: BorderRadius.circular(

), 14.h,

Align(

alignment: Alignment.bottomCenter,

child: SizedBox(

width: double.maxFinite,

child: Column(

mainAxisSize: MainAxisSize.min,

children: [

SizedBox(

width: double.maxFinite,

child: Align(

alignment: Alignment.bottomCenter,

child: Container(

padding: EdgeInsets.symmetric(

), appTheme.blueGray900

horizontal: 8.h,

vertical: 10.h,

decoration: BoxDecoration(

),

borderRadius: BorderRadiusstyle.roundedBorder14,

gradient: LinearGradient(

), ],

begin: Alignment(0.5, 0),

end: Alignment(0.5, 1),

colors: [

theme.colorScheme.onPrimaryContainer,

child: Row(

mainAxisAlignment: MainAxisAlignment.center,

crossAxisAlignment: CrossAxisAlignment.end,

children: [

CustomImageView( imagePath: height: 34.h, width: 34.h,

) , margin: EdgeInsets.only(top: 52.h),

profilessectionItemModelObj.agnessMonica!,

SizedBox(width: 12.h),

SizedBox(width: 12.h),

Padding(

padding: EdgeInsets.only(bottom: 8.h),

child: Text(

),

profilessectionItemModelobj.agnessmonical!,

overflow: Textoverflow.ellipsis,

style: CustomTextStyles.labelMediumPrimary,