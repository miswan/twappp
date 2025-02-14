import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/list_item_model.dart';

// ignore_for_file: must_be_immutable

class ListItemwidget extends StatelessWidget {

ListItemWidget(this.listItemModelObj, {Key? key})

: super(

key: key,

);

ListItemModel listItemModelobj;

@override

Widget build (BuildContext context) {

return Container(

height: 64.h,

width: 64.h,

decoration: BoxDecoration(

borderRadius: BorderRadiusStyle.circleBorder32,

border: Border.all(

color: appTheme.deep PurpleA200,

width: 2.h,

),

),

child: Stack(

alignment: Alignment.center,

children: [

CustomImageView(

imagePath: listItemModelObj.image!,

height:

54.h,

width: double.maxFinite,

radius: BorderRadius.circular(

26.h,

),

)

],

),

);

}

}