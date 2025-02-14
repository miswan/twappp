
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import 'bloc/discover_bloc.dart';

import 'models/discover_model.dart';

import 'models/profilessection_item_model.dart';

import 'widgets/profilessection_item_widget.dart'; // ignore_for_file: must_be_immutable

class DiscoverPage extends Statefulwidget {

const DiscoverPage({Key? key})

: super(

key: key,

);

@override

DiscoverPagestate createstate() => DiscoverPageState();

static Widget builder (BuildContext context) { return BlocProvider<DiscoverBloc>(

);

create: (context) => DiscoverBloc (DiscoverState( )) discoverModelobj: DiscoverModel(),

..add(DiscoverInitialEvent()), child: DiscoverPage(),

}

class DiscoverPageState extends State<DiscoverPage> with AutomaticKeepAliveClientMixin<DiscoverPage> {

@override

bool get wantKeepAlive => true; @override

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

padding: EdgeInsets.symmetric (vertical: 26.h),

child: Column(

mainAxisSize: MainAxisSize.max,

children: [ Container(

SizedBox(height: 4.h),

width: double.maxFinite,

margin: EdgeInsets.only(left: 16.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

mainAxisAlignment: MainAxisAlignment.center,

children: 「

1,

_buildProfilesSection(context), SizedBox(height: 30.h),

_buildPostSection(context)

);

/// Section Widget

Widget_buildProfilesSection (BuildContext context) {

return Container(

child: BlocSelector<DiscoverBloc, DiscoverState, DiscoverModel?>(

selector: (state) => state.discoverModelobj,

builder: (context, discoverModelobj) {

return SingleChildScrollView(

scrollDirection: Axis.horizontal,

child: Wrap(

direction: Axis.horizontal,

spacing: 16.h,

children: List.generate(

discoverModelobj?.profilessectionItemList.length ?? 0, (index) {

ProfilessectionItemModel model

discoverModelobj?.profilessectionItemList[index] ??

ProfilessectionItemModel();

return ProfilessectionItemWidget(

model,

},

),

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

padding: EdgeInsets.symmetric(

),

horizontal: 24.h,

vertical: 16.h,

decoration: BoxDecoration(

color: appTheme.deepPurpleA200, color: appTheme.black90001.withOpacity(0.1), spreadRadius: 2.h,

borderRadius: BorderRadiusstyle.roundedBorder14,

boxShadow: [

BoxShadow(

blurRadius: 2.h, offset: offset( 2, 1.

],

child: Column(

), mainAxisSize: MainAxisSize.min, crossAxisAlignment: CrossAxisAlignment.start, width: double.maxFinite,

children: [

SizedBox(

child: Row(

children: [

Expanded(

child: Row(

children: [ CustomImageView( imagePath: ImageConstant.imgEllipse21, height: 50.h, width: 50.h, radius: BorderRadius.circular( 24.h, ), ),

Expanded(

SizedBox(width: 16.h), child: Align( alignment: Alignment.bottomLeft, child: Padding( padding: EdgeInsets.only(bottom: 4.h), child: Column(

crossAxisAlignment:

CrossAxisAlignment.start,

children: [

Text(

"lbl_rizal_reynaldhi".tr, style: CustomTextStyles.titleMedium18, ),

SizedBox(height: 2.h), Text( "lbl_35_minutes_ago".tr, style: CustomTextStyles .labelMediumBluegray100,

), CustomImageView( imagePath: ImageConstant.imgGridPrimary, height: 6.h, width: 30.h,

],

),

), SizedBox(height: 16.h),

SizedBox(

width: 294.h,

child: Text( "msg_me_and_my_friends".tr, maxLines: 2, overflow: Textoverflow.ellipsis, style: theme.textTheme.bodyLarge!.copywith( height: 1.50, ),

),

),

SizedBox(height: 8.h), SizedBox( width: double.maxFinite, child: Row( children: [ Text( "lbl beach".tr, style: theme.textTheme.bodyMedium, ),

Spacer(),

Text(

"lbl_ocean".tr, style: theme.textTheme.bodyMedium, ), Padding( padding: EdgeInsets.only( left: 30.h, right: 112.h, ), child: Text( "lbl_holiday".tr, style: theme.textTheme.bodyMedium, ),

SizedBox(height: 14.h),

CustomImageView(

imagePath: ImageConstant.img211,

height: 226.h,

width: double.maxFinite,

radius: BorderRadius.circular(

14.h,

),

),

SizedBox(height: 8.h)

],

),

)

],

),

);

}

}