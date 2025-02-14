import 'package:flutter/material.dart';

import "../../../core/app_export.dart';

import '../models/trendingposts_item_model.dart';

// ignore_for_file: must_be_immutable

class TrendingpostsItemwidget extends StatelessWidget {

TrendingpostsItemwidget(this.trendingpostsItemModelobj, {Key? key})

: super(

key: key, );

TrendingpostsItemModel trendingpostsItemModelobj;

@override

Widget build(BuildContext context) {

return Container(

width: double.maxFinite,

decoration: BoxDecoration(

color: appTheme.deepPurpleA200,

borderRadius: BorderRadiusStyle.roundedBorder14,

boxShadow: [

BoxShadow(

color: appTheme.black90001.withopacity(0.1),

spreadRadius: 2.h,

blurRadius: 2.h,

offset: offset(

2,

),

)

1,

child: Column(

mainAxisSize: MainAxisSize.min,

children: [

SizedBox(

height: 220.h,

width: double.maxFinite,

child: Stack(

alignment: Alignment.center,

children: [

CustomImageView(

imagePath: ImageConstant.img40,

height: 218.h,

width: double.maxFinite,

radius: BorderRadius.circular(

),

),

14.h,

Column(

mainAxisSize: MainAxisSize.min,

children: [

Container(

padding: EdgeInsets.all(22.h),

decoration: BoxDecoration(

borderRadius: BorderRadiusstyle.roundedBorder14,

gradient: LinearGradient(

begin: Alignment(0.5, 0),

end: Alignment(0.5, 1),

colors: [

theme.colorscheme.onPrimaryContainer,

appTheme.blueGray900

],

),

),

width: double.maxFinite,

child: Row(

crossAxisAlignment: CrossAxisAlignment.end,

children: [

CustomImageView(

),

imagePath: ImageConstant.imgEllipse7,

height: 50.h,

width: 50.h,

radius: BorderRadius.circular(

),

24.h,

margin: EdgeInsets.only(top: 124.h),

SizedBox(width: 16.h),

SizedBox(width: 16.h),

Expanded(

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Text(

),

trendingpostsItemModelObj.rickonad!,

style: CustomTextStyles.titleLargePrimary,

SizedBox(height: 6.h),

Text(

trendingpostsItemModelObj.time!,

style: theme.textTheme.bodyMedium,

),

)

SizedBox(height: 22.h),

SizedBox(

width: 334.h,

child: Text(

trendingpostsItemModelObj.thisisthe!,

maxLines: 2,

overflow: Textoverflow.ellipsis,
style: theme.textTheme.bodyLarge!.copyWith(

height: 1.50,

),

),

SizedBox(height: 22.h),

Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric (horizontal: 16.h),

child: Row(

children: [

Text(

trendingpostsItemModelObj.huge!, style: theme.textTheme.bodyMedium,

),

Padding(

padding: EdgeInsets.only(left: 30.h),

child: Text( trendingpostsItemModelObj.fotography!, style: theme.textTheme.bodyMedium,

),

),

Padding(

padding: EdgeInsets.only(left: 30.h),

child: Text(

trendingpostsItemModelObj.nature!, style: theme.textTheme.bodyMedium,

),

)

],

),

),

SizedBox(height: 50.h)

],

),

);

}