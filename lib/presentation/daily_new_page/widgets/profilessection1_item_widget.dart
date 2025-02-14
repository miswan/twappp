import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/profilessection1_item_model.dart';

// ignore_for_file: must_be_immutable

class Profilessection1Itemwidget extends StatelessWidget {

Profilessection1ItemWidget(this.profilessection1ItemModelObj, {Key? key})

: super(

key: key,

);

Profilessection1ItemModel profilessection1ItemModelobj;

@override

Widget build(BuildContext context) {

return SizedBox(

height: 178.h,

width: 146.h,

child: Stack(

alignment: Alignment.center, CustomImageView( imagePath: profilessection1ItemModelObj.nineteenone!, height: 178.h, width: double.maxFinite, radius: BorderRadius.circular( ), 14.h,

children: [

),

Align(

alignment: Alignment.bottomCenter, mainAxisSize: MainAxisSize.min, padding: EdgeInsets.symmetric( ), vertical: 10.h,

child: SizedBox(

width: double.maxFinite,

child: Column(

children: [

SizedBox(

width: double.maxFinite,

child: Align(

alignment: Alignment.bottomCenter,

child: Container(

horizontal: 8.h,

decoration: BoxDecoration(

borderRadius: BorderRadiusstyle.roundedBorder14, gradient: LinearGradient( begin: Alignment(0.5, 0), end: Alignment(0.5, 1), colors: [ theme.colorScheme.onPrimaryContainer, appTheme.blueGray900 1, ),

}

),

child: Row(

mainAxisAlignment: MainAxisAlignment.center,

crossAxisAlignment: CrossAxisAlignment.end,

children: [

CustomImageView( imagePath: height: 34.h, width: 34.h,

), margin: EdgeInsets.only(top: 52.h),

profilessection1ItemModelObj.agnessMonica!,

SizedBox(width: 12.h),

SizedBox(width: 12.h),

Padding(

padding: EdgeInsets.only(bottom: 8.h), child: Text( profilessection1ItemModelobj.agnessmonical!, overflow: Textoverflow.ellipsis,

), style: CustomTextStyles.labelMediumPrimary,