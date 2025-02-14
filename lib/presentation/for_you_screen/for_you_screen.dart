import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import '../../widgets/app_bar/appbar_leading_image_one.dart';

import '../../widgets/app_bar/appbar_subtitle_two.dart';

import '../../widgets/app_bar/appbar_title.dart';

import '../../widgets/app_bar/appbar_trailing_image.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

import '../for_you_page/bloc/for_you_bloc.dart';

import 'models/for_you_model.dart';

class ForYouScreen extends Statelesswidget {

const ForYouScreen({Key? key}) );

: super(

key: key,

static Widget builder (BuildContext context) {

return BlocProvider ForYouBloc>(

create: (context) => ForYouBloc(ForYouState( forYouModelobj: ForYouModel(),

)) ..add(ForYouInitialEvent()),

child: ForYouScreen(), ); }

@override

Widget build (BuildContext context) {

return BlocBuilder<ForYouBloc, ForYouState>(

builder: (context, state) {

return SafeArea(

child: Scaffold(

extendBody: true, extendBodyBehindAppBar: true,

body: Container(

width: double.maxFinite,

height: SizeUtils.height,

decoration: BoxDecoration( image: DecorationImage( image: AssetImage( ), ImageConstant.imgForYou, fit: BoxFit.fill, ), ),

color: theme.colorscheme.primary,

},

);

);

child: SizedBox(

child: Column( mainAxisSize: MainAxisSize.min, children: [ 1, SizedBox( ), width: double.maxFinite, child: _buildHeader(context), SizedBox(height: 4.h)

/// Section Widget

PreferredSizeWidget_buildHeader(BuildContext context) {

return CustomAppBar(

leadingwidth: 50.h,

leading: AppbarLeadingImageOne(

imagePath: ImageConstant.imgEllipse9,

height: 50.h,

width: 50.h,

margin: EdgeInsets.only(

left: 16.h,

bottom: 2.h,

),

),

title: Padding(

padding: EdgeInsets.only(left: 24.h), child: Column( children: [ AppbarTitle( ), text: "lbl_lucas_anna".tr, SizedBox(height: 6.h), AppbarSubtitleTwo( text: "lbl_35_16".tr, margin: EdgeInsets.only(right: 76.h),

),

),

actions: [

);

AppbarTrailingImage( imagePath: ImageConstant.imgClosePrimary1, margin: EdgeInsets.only( top: 13.h, ), right: 16.h, bottom: 15.h,

1,