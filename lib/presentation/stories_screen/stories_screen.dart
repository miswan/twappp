
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';

import '../../widgets/app_bar/appbar_title_searchview.dart';

import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_elevated_button.dart';

import '../z/bloc/stories_bloc.dart';

import '../z/models/listmerry_new_item_model.dart';

import '../z/models/stories_item_model.dart';

import '../z/models/stories_model.dart';

import '../z/widgets/listmerry_new_item_widget.dart';

import '../z/widgets/stories_item_widget.dart';

class StoriesScreen extends StatelessWidget {

const StoriesScreen({Key? key})

: super(

);

key: key,

static Widget builder (BuildContext context) {

return BlocProvider StoriesBloc>(

create: (context) => StoriesBloc(Storiesstate(

))

storiesModelobj: StoriesModel(),

..add(StoriesInitialEvent()),

child: StoriesScreen(),

);

}

@override

Widget build (BuildContext context) {

return SafeArea(

child: Scaffold(

resizeToAvoidBottomInset: false,

appBar: _buildAppbarSection(context),

body: Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric (vertical: 22.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

1,

_buildStoriesSection(context), SizedBox(height: 24.h), SizedBox(height: 24.h),

_buildPostSection(context),

_buildEventsSection (context),

SizedBox(height: 4.h)

);

/// Section Widget

PreferredSizeWidget_buildAppbarSection (BuildContext context) {

return CustomAppBar(

title: SizedBox(

width: double.maxFinite,

child: BlocSelector<StoriesBloc, Storiesstate, TextEditingController?>(

selector: (state) => state.searchController,

builder: (context, searchController) {

return AppbarTitleSearchview(

margin: EdgeInsets.only(left: 16.h),

hintText: "lbl_search".tr,

controller: searchController,

)

);

actions: [

AppbarTrailingIconbutton(

imagePath: ImageConstant.imgAdd,

margin: EdgeInsets.only(

top: 5.h,

right: 19.h,

bottom: 7.h,
/// Section Widget

Widget_buildStoriesSection (BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.only(left: 16.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Text(

), "lbl_stories".tr, style: theme.textTheme.headlineSmall,

SizedBox(height: 20.h),

Container(

margin: EdgeInsets.only(right: 16.h),

width: double.maxFinite,

child: BlocSelector<StoriesBloc, Storiesstate, StoriesModel?>(

selector: (state) => state.storiesModelObj,

builder: (context, storiesModelobj) {

return SingleChildScrollview(

scrollDirection: Axis.horizontal,

child: Wrap(

direction: Axis.horizontal,

spacing: 16.h,

children: List.generate(

storiesModelobj?.storiesItemList.length ?? 0, (index) {

StoriesItemModel model StoriesItemModel();

storiesModelobj?.storiesItemList[index] ??

return StoriesItemWidget(

); model,

);

),

],

/// Section Widget

Widget_buildPostSection (BuildContext context) {

return SizedBox(

width: double.maxFinite,

child: Align(

alignment: Alignment.center,

child: Padding(

padding: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

children: [

Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric(

),

horizontal: 16.h, vertical: 22.h,

decoration: BoxDecoration(

color: appTheme.deepPurpleA200,

borderRadius: BorderRadiusStyle.roundedBorder14,

boxShadow: [

BoxShadow(

color: appTheme.black90001.withOpacity(0.1),

spreadRadius: 2.h,

blurRadius: 2.h,

offset: offset(

2,

),

],

)

child: Column(

mainAxisSize: MainAxisSize.min,

crossAxisAlignment: CrossAxisAlignment.start,

mainAxisAlignment: MainAxisAlignment.center,

children: [

SizedBox( children: [ CustomImageView( height: 50.h, 24.h, ), ), Expanded( Text( ),

width: double.maxFinite,

child: Row(

imagePath: ImageConstant.imgEllipse21,

width: 50.h,

radius: BorderRadius.circular(

SizedBox(width: 16.h),

child: Align(

alignment: Alignment.bottomLeft,

child: Padding(

padding: EdgeInsets.only(bottom: 2.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

"lbl_rizal_reynaldhi".tr,

style: CustomTextStyles.titleMedium18,

),
);

)

],

),

),

),

),

SizedBox(height: 2.h),

Text

"lbl_35_minutes_ago".tr,

style: CustomTextStyles

.labelMediumBluegray100,

SizedBox(width: 16.h),

CustomImageView( imagePath: ImageConstant.imgGridPrimary, height: 6.h,

width: 30.h,

),

SizedBox(height: 16.h),

Text( maxLines: 3, overflow: Textoverflow.ellipsis, style: theme.textTheme.bodyLarge!.copywith( height: 1.50,

),

"msg_most_people_never".tr,

),

SizedBox(height: 16.h),

Container(

width: double.maxFinite, margin: EdgeInsets.only(right: 4.h),

child: Row(

crossAxisAlignment: CrossAxisAlignment.end,

children: [

CustomImageView( ) height: 16.h,

, margin: EdgeInsets.only(bottom: 2.h),

imagePath: ImageConstant.imgFavoritePrimary,

width: 18.h,

Padding( padding: EdgeInsets.only( left: 8.h, bottom: 2.h,

),

child: Text( "lbl 2200".tr, style: theme.textTheme.bodySmall, ),

),

CustomImageView(

) imagePath: ImageConstant.imgUserPrimary, height: 18.h, width: 18.h,

, alignment: Alignment.center, margin: EdgeInsets.only(left: 28.h),

Padding(

padding: EdgeInsets.only(

), left: 8.h,

bottom: 2.h,

child: Text(

"lbl_800".tr, style: theme.textTheme.bodySmall, ),

),

1,

Spacer(),

CustomImageView( imagePath: ImageConstant.imgSettingsPrimary1, height: 24.h, width: 54.h, alignment: Alignment.center,

/// Section Widget

Widget_buildEventsSection(BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.only(left: 16.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Container( width: double.maxFinite, margin: EdgeInsets.only(right: 16.h), child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [ Text( "lbl_events".tr,

)

style: theme.textTheme.headlineSmall,

SizedBox(height: 16.h),

SizedBox(

height: 200.h,

width: 398.h,

child: Stack(

alignment: Alignment.centerRight,

children: [

Align(

alignment: Alignment.centerLeft,

child: SizedBox(

width: double.maxFinite,

child: Column(

mainAxisSize: MainAxisSize.min,

children: [

SizedBox(

width: double.maxFinite,

child: Align(

alignment: Alignment.centerLeft,

child: Row(

children: [

SizedBox(

width: 326.h,

child: Column(

crossAxisAlignment:

CrossAxisAlignment.start,

children: [

SizedBox(

height: 144.h,

width: double.maxFinite,

child: Stack

alignment: Alignment.centerLeft,

children: [

CustomImageView(

imagePath:

ImageConstant.img19144x146, height: 144.h, width: 146.h, radius: BorderRadius.circular( 10.h, ),

),

CustomElevatedButton(

height: 20.h,

width: 54.h,

text: "lbl_live".tr, margin: EdgeInsets.only( left: 12.h,

),

top: 12.h,

leftIcon: Container( margin: EdgeInsets.only(right: 4.h),

),

child: CustomImageView( imagePath: ImageConstant .imgGroup9027,

), fit: BoxFit.contain,

height: 12.h,

width: 12.h,

buttonTextStyle: CustomTextStyles .labelMediumPrimary,

alignment: Alignment.topLeft,

1,

),

), SizedBox(height: 18.h), Text( "msg_live_we_the_fest".tr, style: CustomTextStyles ), .titleSmallBlack90001,

SizedBox(height: 6.h), Text( "msg_19_00_forg_stadium".tr, style: CustomTextStyles .labelLargeBluegray400,

SizedBox(

width: 146.h,

child: Column(

crossAxisAlignment: CrossAxisAlignment.start, children: [ CustomImageView( imagePath: ImageConstant.img192, height: 144.h, width: double.maxFinite, radius: BorderRadius.circular( 10.h,

),

),

SizedBox(height: 18.h),

Text(

"msg_blue_loyal_party".tr, style: CustomTextStyles .titleSmallBlack90001,

),
SizedBox(height: 4.h),

Text

"msg_19_35_latuna".tr,

style: CustomTextStyles

.labelLargeBluegray400,

],

),

)

],

],

),

),

),

Padding(

padding: EdgeInsets.only(right: 88.h),

child: BlocSelector<StoriesBloc, Storiesstate, StoriesModel?>(

selector: (state) => state.storiesModelobj,

builder: (context, storiesModelobj) {

return Listview.builder(

padding: EdgeInsets.zero,

physics: NeverScrollableScrollPhysics(),

shrinkwrap: true,

itemCount:

☐ storiesModelobj?.listmerryNewItemList.length ?? 0,

itemBuilder: (context, index) {

ListmerryNewItemModel model =

storiesModelobj?.listmerryNewItemList[index] ??

ListmerryNewItemModel();

return ListmerryNewItemwidget(

model,

);

},

);

},

),

],

],

),

);

}

}