import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';

import '../../widgets/app_bar/appbar_subtitle_one.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_icon_button.dart';

import 'bloc/detailed_profile_bloc.dart';

import 'models/detailed profile model.dart':

class DetailedProfileScreen extends Statelesswidget {

const DetailedProfileScreen({Key? key})

: super(

key: key,

);

static Widget builder(BuildContext context) {

return BlocProvider<DetailedProfileBloc>(

create: (context) => DetailedProfileBloc(DetailedProfileState(

)) detailedProfileModelobj: DetailedProfileModel(),

..add(DetailedProfileInitialEvent()),

child: DetailedProfileScreen(), );

}

@override

Widget build (BuildContext context) {

return BlocBuilder<DetailedProfileBloc, DetailedProfileState>(

builder: (context, state) {

return SafeArea(

child: Scaffold(

appBar: _buildAppBar(context),

body: Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric(vertical: 18.h),

child: Column(

children: [

_buildProfileSection(context),

SizedBox(height: 20.h), SizedBox(

),

width: double.maxFinite,

child: Divider(),

SizedBox(height: 30.h), _buildDetailsSection(context),

SizedBox(height: 36.h), SizedBox(

), child: Divider(),

width: double.maxFinite,

SizedBox(height: 32.h), _buildAdditionalDetailsSection(context),

SizedBox(height: 4.h)

);

},

}

/// Section Widget

PreferredSizeWidget_buildAppBar (BuildContext context) {

return CustomAppBar(

leadingwidth: 24.h,

leading: AppbarLeadingImage(

imagePath: ImageConstant.imgArrowBackDeepPurpleA200,

margin: EdgeInsets.only(

left: 16.h,

top: 13.h,

bottom: 15.h,

),

),

actions: [

AppbarSubtitleone(

text: "lbl_done".tr,

margin: EdgeInsets.only(

),

top: 15.h,

right: 17.h,

bottom: 16.h,

}

/// Section Widget

Widget_buildProfileSection (BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [ Text(

"lbl_profile".tr,

style: theme.textTheme.headlineLarge,

);

/// Section Widget

return Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric(horizontal: 16.h),

child: Column(

children: [

SizedBox(

height: 126.h,

width: 124.h,

child: Stack(

alignment: Alignment.center,

children: [

CustomImageView( ),

imagePath: ImageConstant.imgEllipse14120x120,

height: 120.h,

width: double.maxFinite,

radius: BorderRadius.circular( 60.h,

),

CustomIconButton(

height: 40.h,

width: 40.h,

decoration: IconButtonStyleHelper.none,

alignment: Alignment.bottomRight,

child: CustomImageView(

), imagePath: ImageConstant.imgEllipse14DeepPurpleA2001,

),

SizedBox(height: 46.h),

SizedBox (

width: double.maxFinite, width: double.maxFinite, child: _buildEmailRow( context, emailLabel: "lbl_username".tr, emailvalue: "lbl_rosalia".tr, ),

child : Column(

children: [

SizedBox(

1,

),

);

}

) , SizedBox(height: 28.h), SizedBox( width: double.maxFinite, child: _buildEmailRow( context,

),

), emailLabel: "lbl_email".tr, emailvalue: "lbl_xyz_gmail_com".tr,

SizedBox(height: 28.h),

SizedBox(

width: double.maxFinite,

child: _buildEmailRow(

), context, emailLabel: "lbl_phone".tr, emailvalue: "msg_12_3456_789_000".tr,

/// Section Widget

Widget_buildAdditionalDetailsSection (BuildContext context) {

return Container( SizedBox( width: double.maxFinite, child: _buildEmailRow( context, emailLabel: "lbl_gender".tr, emailvalue: "lbl_female".tr, ), ),

width: double.maxFinite,

margin: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

children: [

SizedBox(

width: double.maxFinite,

child: Column(

children: [

}

);

SizedBox(height: 28.h),

SizedBox( ), context,

width: double.maxFinite,

child: _buildEmailRow(

emailLabel: "lbl_date_of_birth2".tr,

emailvalue: "lbl_21_08_1992".tr,
/// Common widget

Widget_buildEmailRow(

BuildContext context, {

required string emailLabel,

required string emailvalue,

}) {

return Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween,

children: [

Text(

emailLabel,

style: CustomTextstyles.bodyLargeBluegray400.copywith(

color: appTheme.blueGray400,

),

),

Text(

emailvalue,

style: CustomTextStyles.bodyLargeBlack90001.copywith(

color: appTheme.black90001,

),

)

],

);

}

}