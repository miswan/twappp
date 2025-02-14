
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/appbar_trailing_image.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import 'bloc/profile_bloc.dart';

import 'models/postlist1_item_model.dart';

import 'models/profile_model.dart';

import 'widgets/postlist1_item_widget.dart'; // ignore_for_file: must_be_immutable

class ProfilePage extends StatelessWidget {

const ProfilePage({Key? key})

: super( );

key: key,

static Widget builder (BuildContext context) {

return BlocProvider ProfileBloc>(

create: (context) => ProfileBloc(ProfileState( profileModelobj: ProfileModel(),

))

..add(ProfileInitialEvent()),

child: ProfilePage(),

);

}

@override

Widget build(BuildContext context) {

return SafeArea(

child: Scaffold(

appBar: _buildAppbar (context),

body: Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric (vertical: 20.h),

child: Column(

mainAxisSize: MainAxisSize.max,

children: [ _buildProfileoverview(context),

SizedBox(height: 24.h),

SizedBox(

),

width: double.maxFinite,

child: Divider(),

SizedBox(height: 24.h),

Expanded(

child: Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

mainAxisSize: MainAxisSize.max,

children: [_buildPostList(context)],

);

}

],

), ), ), ),

SizedBox(height: 4.h)

/// Section Widget

PreferredSizeWidget_buildAppbar (BuildContext context) {

return CustomAppBar(

actions: [

AppbarTrailingImage(

imagePath: ImageConstant.imgLink,

margin: EdgeInsets.only(

top: 13.h,

right: 16.h,

bottom: 15.h,

);

}

),

/// Section Widget

Widget_buildProfileOverview(BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

children: [

SizedBox(

width: double.maxFinite,

child: GestureDetector(

onTap: () {

}, 40.h, ), ), Expanded( child: Padding( child: Column( children: [ Text(

onTapProfiledetails(context);

child: Row(

children: [

CustomImageView(

imagePath: ImageConstant.imgEllipse14,

height: 80.h,

width: 80.h,

radius: BorderRadius.circular(

SizedBox(width: 24.h),

child: Align(

alignment: Alignment.bottomLeft,

padding: EdgeInsets.only(bottom: 4.h),

crossAxisAlignment: CrossAxisAlignment.start,

"lbl_rosalia".tr,

style: CustomTextStyles.headlineLargeBlack90001,

SizedBox(height: 8.h), Text(

"lbl_rose23".tr, style: customTextStyles.bodyMediumBluegray400,

),

),

SizedBox(height: 26.h),

Container(

padding: EdgeInsets.symmetric (horizontal: 8.h), width: double.maxFinite, child: Row( mainAxisAlignment: MainAxisAlignment.center, children: [

Column(

crossAxisAlignment: CrossAxisAlignment.start, children: [ Text(

"lbl_post".tr, style: CustomTextStyles.titleLargeGray500, ),

SizedBox(height: 10.h), Padding(

padding: EdgeInsets.only(left: 8.h), child: Text(

"lbl_75".tr, style: CustomTextStyles.titleLargeDeeppurpleA200_1, ),

)

],

),

Expanded(

child: Column(

children: [

Text( "lbl_following".tr, style: CustomTextStyles.titleLargeGray500, ),

SizedBox(height: 8.h), Text(

"lbl_3400".tr, style: CustomTextStyles.titleLargeDeeppurpleA200_1,

), Column( crossAxisAlignment: CrossAxisAlignment.end, children: [

Text( "lbl_followers".tr, style: CustomTextstyles.titleLargeGray500,

), SizedBox(height: 10.h), Padding(

padding: EdgeInsets.only(right: 18.h), child: Text( "lbl_6500".tr,

style: CustomTextStyles.titleLargeDeeppurpleA200_1, ),

/// Section Widget

Widget_buildPostList(BuildContext context) {

return Expanded(

child: BlocSelector<ProfileBloc, Profilestate, ProfileModel?>(

selector: (state) => state.profileModelobj, builder: (context, profileModelobj) {

return ListView.separated(

padding: EdgeInsets.zero, physics: BouncingScrollPhysics(), shrinkwrap: true, separatorBuilder: (context, index) { return SizedBox( height: 16.h, );

},

itemCount: profileModelobj?.postlist1ItemList.length ?? 0,

itemBuilder: (context, index) { Postlist1ItemModel model profileModelobj?.postlist1ItemList[index] ?? Postlist1ItemModel(); return Postlist1ItemWidget(

model,

);

},

);

},

);

}
/// Navigates to the detailedProfileScreen when the action is triggered.

onTapProfiledetails (BuildContext context) {

NavigatorService.pushNamed (

AppRoutes.detailedProfileScreen,

);

}

}