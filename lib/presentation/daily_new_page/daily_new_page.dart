
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import 'bloc/daily_new_bloc.dart';

import 'models/daily_new_model.dart';

import 'models/listforty_one_item_model.dart';

import 'models/profilessection1_item_model.dart';

import 'widgets/listforty_one_item_widget.dart';

import 'widgets/profilessection1_item_widget.dart'; // ignore_for_file: must_be_immutable

class DailyNewPage extends Statefulwidget {

const DailyNewPage({Key? key})

: super(

key: key,

);

@override

DailyNewPagestate createstate() => DailyNewPageState();

static Widget builder (BuildContext context) {

}

return BlocProvider<DailyNewBloc>(

); child: DailyNewPage(),

create: (context) => DailyNewBloc(DailyNewState( dailyNewModelobj: DailyNewModel(),

))

..add(DailyNewInitialEvent()),

class DailyNewPageState extends State<DailyNewPage> with AutomaticKeepAliveClientMixin<DailyNewPage> { @override

bool get wantKeepAlive => true;

@override

Widget build (BuildContext context) {

super.build(context);

return SafeArea(

child: Scaffold(

backgroundColor: Colors.transparent, resizeToAvoidBottomInset: false,

body: SizedBox(

width: double.maxFinite,

child: SingleChildScrollView(

child: Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric (vertical: 28.h),

child: Column(

mainAxisSize: MainAxisSize.max,

children: [

Container(

width: double.maxFinite,

margin: EdgeInsets.only(left: 16.h), children: [ ], SizedBox(height: 30.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

_buildProfilessection(context),

_buildPostSection(context)

);

/// Section Widget

Widget_buildProfilesSection (BuildContext context) {

return Container(

child: BlocSelector<DailyNewBloc, DailyNewState, DailyNewModel?>(

selector: (state) state.dailyNewModelobj,

builder: (context, dailyNewModelobj) {

return SingleChildScrollView(

scrollDirection: Axis.horizontal,

child: wrap(

direction: Axis.horizontal,

spacing: 16.h,

children: List.generate(

dailyNewModelObj?.profilessection1ItemList.length ?? 0,

(index) {

Profilessection1ItemModel model

dailyNewModelobj?.profilessection1ItemList[index] ??

Profilessection1ItemModel();

return Profilessection1Itemwidget(

model,

);

);

/// Section Widget

Widget_buildPostSection (BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.only(right: 16.h),

child: Column(

children: [

Container(

width: double.maxFinite,

padding: EdgeInsets.all(16.h),

decoration: BoxDecoration(

color: appTheme.deepPurpleA200,
borderRadius: BorderRadiusstyle.roundedBorder14,

boxShadow: [

BoxShadow(

color: appTheme.black90001.withopacity(0.1),

spreadRadius: 2.h,

blurRadius: 2.h,

offset: Offset(

2.

child: Column(

mainAxisSize: MainAxisSize.min,

children: [

Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric(horizontal: 8.h),

child: Row(

children: [

CustomImageView( ), imagePath: ImageConstant.imgEllipse2150x50, width: 50.h, radius: BorderRadius.circular( ), 24.h,

height: 50.h,

SizedBox(width: 16.h),

Expanded(

child: Align( alignment: Alignment.bottomLeft, child: Column( crossAxisAlignment: CrossAxisAlignment.start,

child: Padding(

padding: EdgeInsets.only(bottom: 2.h),

children: [ Text( ), "lbl avari kudhra".tr, style: CustomTextStyles.titleMedium18, style: )

SizedBox(height: 2.h), Text( "lbl_1_hour_ago".tr,

CustomTextStyles.labelMediumBluegray100,

1,

),

),

), SizedBox(width: 16.h),

), SizedBox(height: 32.h), Container(

],

CustomImageView( imagePath: ImageConstant.imgGridPrimary, height: 6.h, width: 30.h,

width: double.maxFinite,

child: selector: (state) => state.dailyNewModelobj, return SingleChildScrollView( direction: Axis.horizontal, spacing: 16.h,

BlocSelector<DailyNewBloc, DailyNewState, DailyNewModel?>(

builder: (context, dailyNewModelobj) {

scrollDirection: Axis.horizontal,

child: wrap(

children: List.generate(

dailyNewModelobj?.listfortyOneItemList.length ?? 0, (index) {

ListfortyOneItemModel model dailyNewModelobj ?.listfortyoneItemList[index] ?? ListfortyOneItemModel(); return ListfortyOneItemWidget( model,

);

},

),

),

SizedBox(height: 18.h),

Text( "msg_this_is_a_very_rare".tr, maxLines: 2,

),

overflow: Textoverflow.ellipsis,

style: theme.textTheme.bodyLarge!.copywith(

),

height: 1.50,

SizedBox(height: 8.h),

SizedBox(

width: double.maxFinite,
child: Row(

children:

[

Text

"lbl_animal".tr,

style: theme.textTheme.bodyMedium,

Padding(

padding: EdgeInsets.only(left: 30.h),

child: Text(

"lbl_forest".tr,

style: theme.textTheme.bodyMedium,

),

),

Padding(

padding: EdgeInsets.only(left: 30.h),

child: Text(

"lbl_rabbit".tr,

style: theme.textTheme.bodyMedium,

),

)

],

),

),

SizedBox(height: 10.h)

],

),

)

],

),

}

}