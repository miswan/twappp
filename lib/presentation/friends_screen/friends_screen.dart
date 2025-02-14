
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/appbar_leading_image.dart';

import '../../widgets/app_bar/appbar_trailing_image.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../../widgets/custom_search_view.dart';

import 'bloc/friends bloc.dart':

import 'models/friends_model.dart';

import 'models/friendslist_item_model.dart';

import 'widgets/friendslist_item_widget.dart';

class FriendsScreen extends StatelessWidget {

const FriendsScreen({Key? key})

: super(

); key: key,

static Widget builder (BuildContext context) {

return BlocProvider FriendsBloc>(

create: (context) => FriendsBloc(FriendsState( )) friendsModelobj: FriendsModel(), ..add(FriendsInitialEvent()),

child: FriendsScreen(), );

}

@override

Widget build(BuildContext context) {

return SafeArea(

child: Scaffold(

resizeToAvoidBottomInset: false, appBar: _buildAppBar(context), width: double.maxFinite, padding: EdgeInsets.symmetric (vertical: 18.h), child: Column( mainAxisSize: MainAxisSize.max, children: [ ], _buildFriendsSection(context), SizedBox(height: 22.h), _buildFriendsList(context)

body: Container(

);

}

/// Section Widget

PreferredSizeWidget_buildAppBar (BuildContext context) {

return CustomAppBar(

leadingwidth: 24.h, leading: AppbarLeadingImage( imagePath: ImageConstant.imgArrowBackDeepPurpleA200, margin: EdgeInsets.only( left: 16.h, top: 13.h, bottom: 15.h, ),

),

actions: [

AppbarTrailingImage( imagePath: ImageConstant.imgPersonAddAlt1, margin: EdgeInsets.only( ), top: 13.h, right: 16.h, bottom: 15.h,

1,

);

/// Section Widget

Widget_buildFriendsSection(BuildContext context) {

return Container(

width: double.maxFinite, margin: EdgeInsets.symmetric (horizontal: 16.h), child: Column( crossAxisAlignment: CrossAxisAlignment.start, children: [ Text( ), "lbl_friends".tr, style: theme.textTheme.headlineLarge,

SizedBox(height: 12.h),

BlocSelector<FriendsBloc, FriendsState, TextEditingController?>(

selector: (state) => state.searchController,

builder: (context, searchController) { return CustomSearchView( controller: searchController, hintText: "lbl_search".tr, contentPadding: EdgeInsets.symmetric( horizontal: 16.h, vertical: 10.h, ), );

},

),

SizedBox(height: 24.h),

Text( ), "msg_connect_to_your".tr, SizedBox(height: 28.h), SizedBox( width: double.maxFinite, child: Row( children: [

style: CustomTextStyles.titleLargeDeeppurpleA200,

CustomImageView

imagePath: ImageConstant.imgTrashBlue5001,

height: 50.h, width: 50.h,

imagePath: ImageConstant.imgFacebookBlueA4001,

CustomImageView( height: 50.h, width: 50.h,

margin: EdgeInsets.only(left: 30.h), ),

CustomImageView( imagePath: ImageConstant.imgThumbsUpYellowA200, height: 50.h, width: 50.h, margin: EdgeInsets.only(left: 30.h),

),

Spacer( flex: 26,

), CustomImageView( imagePath: ImageConstant.imgWarningRed700, height: 50.h, width: 50.h,

), Spacer( )

flex: 73,

],

),

),

SizedBox(height: 26.h),

Text(

"lbl_recommeded".tr, style: CustomTextStyles.titleLargeDeeppurpleA200, )

1,

/// Section Widget

Widget_buildFriendsList(BuildContext context) {

return Expanded(

child: BlocSelector<FriendsBloc, Friendsstate, FriendsModel?>(

selector: (state) => state.friendsModelobj,

builder: (context, friendsModelobj) {

return ListView.separated(

padding: EdgeInsets.zero,

physics: BouncingScrollPhysics(),

shrinkwrap: true,

separatorBuilder: (context, index) {

return Padding(

padding: EdgeInsets.symmetric (vertical: 8.0.h), child: Divider( height: 2.h, thickness: 2.h, color: appTheme.gray50, ),

);

},

itemCount: friendsModelObj?.friendslistItemList.length ?? 0,

itemBuilder: (context, index) {

FriendslistItemModel model

friendsModelobj?.friendslistItemList[index] ??

FriendslistItemModel();

return FriendslistItemwidget(

model,

);

},

);

},

);

},

);

}

}   