o's Application1 > lib>

presentation >

account_details_screen>

account_details_screen.dart

import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../theme/custom_button_style.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';

import '.. /../widgets/app_bar/appbar_trailing_image.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_icon_button.dart';

import '../../widgets/custom_outlined_button.dart';

import 'bloc/account_details_bloc.dart';

import 'models/account_details_model.dart';

import 'models/list_item_model.dart';

import 'models/listfortysix_item_model.dart';

import 'widgets/list_item_widget.dart';

import 'widgets/listfortysix_item_widget.dart';

class AccountDetailsScreen extends Statelesswidget {

const AccountDetailsScreen({Key? key})

super( );

key: key,

static Widget builder (BuildContext context) {

return BlocProvider<AccountDetailsBloc>(

create: (context) => AccountDetailsBloc(AccountDetailsstate(

)) accountDetailsModelobj: AccountDetailsModel(),

..add(AccountDetailsInitialEvent()),

child: AccountDetailsScreen(),

);

}

@override

Widget build (BuildContext context) {

return SafeArea(

child: Scaffold(

body: SizedBox(

width: double.maxFinite,

child: Column(

children: [

_buildProfileHeader(context),

Expanded(

child: SingleChildScrollView(

child: Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric(vertical: 26.h),

child: Column(

)

children: [

_buildPostStatistics (context),

SizedBox(height: 22.h),

SizedBox(

1,

),

width: double.maxFinite,

child: Divider(),

SizedBox(height: 22.h),

_buildAboutMe(context),

SizedBox(height: 22.h),

_buildPhotosSection(context),

SizedBox(height: 22.h),

_buildFriendsSection(context),

SizedBox(height: 4.h)

);

),

/// Section Widget

Widget_buildProfileHeader(BuildContext context) {

return SizedBox(

height: 272.h,

width: double.maxFinite,

child: Stack(

alignment: Alignment.center,

children: [ CustomImageView(

),

imagePath: ImageConstant.imgRectangle3809272x414,

height: 272.h,

width: double.maxFinite,

Padding(

padding: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

mainAxisSize: MainAxisSize.min,

children: [

CustomAppBar(

height: 24.h,

leadingwidth: 24.h,

leading: AppbarLeadingImage(

),

imagePath: ImageConstant.imgArrowBackDeepPurpleA200,

actions: [

AppbarTrailingImage(

imagePath: ImageConstant.imgSettingsDeepPurpleA2001,

)

],

),

SizedBox(height: 160.h),

SizedBox(

width: double.maxFinite,

child: Row(

mainAxisAlignment: MainAxisAlignment.center,

children: [

CustomImageView(

imagePath: ImageConstant.imgEllipse11,
width: 50.h,

height: 50.h, radius: BorderRadius.circular( 24.h, ),

SizedBox(width: 24.h),

Expanded(

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [ Text( "lbl_rosalia".tr, style: CustomTextStyles.titleLargePrimary, ),

SizedBox(height: 6.h), Text( "lbl_rose23".tr, style: theme.textTheme.bodyMedium,

),

SizedBox(width: 24.h), CustomIconButton( height: 32.h, width: 32.h, padding: EdgeInsets.all(4.h), decoration: IconButtonStyleHelper.outlinePrimary, child: CustomImageView( imagePath: ImageConstant.imgPersonAddAlt1Primary, ),

), SizedBox(width: 24.h), CustomOutlinedButton( width: 76.h, text: "lbl_follow".tr, buttonstyle: CustomButtonStyles.outlinePrimaryTL16, buttonTextStyle: CustomTextStyles.titleSmallPrimary,

1

),

);

/// Section Widget

Widget_buildPostStatistics (BuildContext context) { return Container( width: double.maxFinite, margin: EdgeInsets.symmetric (horizontal: 16.h), child: Column( children: [

Container( padding: EdgeInsets.symmetric (horizontal: 8.h), width: double.maxFinite, child: Row( mainAxisAlignment: MainAxisAlignment.center, children: [ Column(

crossAxisAlignment: CrossAxisAlignment.start, children: [ Text( "lbl_post".tr, style: CustomTextStyles.titleLargeGray500, ), SizedBox(height: 10.h),

Padding(

padding: EdgeInsets.only(left: 8.h), child: Text( "lbl_75".tr, style: CustomTextStyles.titleLargeDeeppurpleA200_1,

),

Expanded( child: Column(

children: [ Text( "lbl_following".tr, style: CustomTextStyles.titleLargeGray500, ),

SizedBox(height: 8.h),

Text( "lbl_3400".tr, style: CustomTextStyles.titleLargeDeeppurpleA200_1,

),

),

Column( crossAxisAlignment: CrossAxisAlignment.end, children: [ Text( "lbl_followers".tr, style: CustomTextStyles.titleLargeGray500, ), SizedBox(height: 10.h),

Padding( padding: EdgeInsets.only(right: 18.h),
child: Text

"lbl_6500".tr,

style: CustomTextStyles.titleLargeDeeppurpleA200_1, ),

}

/// Section Widget

Widget_buildAboutMe (BuildContext context) {

return Container(

width: double.maxFinite,

margin: EdgeInsets.symmetric(horizontal: 16.h),

child: Column(

children: [

SizedBox(

width: double.maxFinite, child: Column(

crossAxisAlignment: CrossAxisAlignment.start, children: [

Text( "lbl_about_me".tr, style: CustomTextStyles.titleLargeBlack900, ),

SizedBox(height: 14.h),

Text( "msg_introduce_my_name".tr, maxLines: 5, overflow: Textoverflow.ellipsis, style: CustomTextStyles.bodyLargePrimaryContainer.copywith( height: 1.50, ),

/// Section Widget

Widget_buildPhotosSection (BuildContext context) {

return Container(

width: double.maxFinite,

padding: EdgeInsets.symmetric (horizontal: 16.h),

child: Column(

crossAxisAlignment: CrossAxisAlignment.start,

children: [

Text(

"lbl_photos".tr, style: CustomTextStyles.titleLargeBlack900, ),

SizedBox(height: 12.h), Container(

width: double.maxFinite, child: BlocSelector<AccountDetailsBloc, AccountDetailsstate, AccountDetailsModel?>( selector: (state) => state.accountDetailsModelobj, builder: (context, accountDetailsModelobj) {

return SingleChildScrollView( scrollDirection: Axis.horizontal, child: Wrap(

children: List.generate( accountDetailsModelObj?.listfortysixItemList.length ?? 0,

);

);

)

1,

),

);

/// Section Widget

direction: Axis.horizontal, spacing: 16.h, (index) { ListfortysixItemModel model accountDetailsModelObj ?.listfortysixItemList[index] ?? ListfortysixItemModel(); return ListfortysixItemwidget( model,

Widget_buildFriendsSection(BuildContext context) { width: double.maxFinite,

return Container(

child: Column(

Text(

margin: EdgeInsets.symmetric (horizontal: 16.h), children: [ SizedBox( width: double.maxFinite, child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [

"lbl_friends".tr, style: CustomTextStyles.titleLargeBlack900, ),

SizedBox(height: 12.h),
Container(

width: double.maxFinite,

child: BlocSelector<AccountDetailsBloc, AccountDetailsstate,

AccountDetailsModel?>(

selector: (state) => state.accountDetailsModelobj,

builder: (context, accountDetailsModelobj) {

return SingleChildScrollView(

scrollDirection: Axis.horizontal,

child: Wrap(

direction: Axis.horizontal,

spacing: 16.h,

children: List.generate(

accountDetailsModelObj?.listItemList.length ?? 0,

(index) {

ListItemModel model =

accountDetailsModelObj?.listItemList[index] ??

ListItemModel();

return ListItemwidget(

model,

);

},

),

),

);

},

1,

],

),

);

}

}
