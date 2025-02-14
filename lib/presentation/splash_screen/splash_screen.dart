
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import 'bloc/splash_bloc.dart';

import 'models/splash_model.dart';

class SplashScreen extends StatelessWidget {

const SplashScreen({Key? key})

: super( );

key: key,

static Widget builder (BuildContext context) {

return BlocProvider<SplashBloc>(

create: (context) => SplashBloc(SplashState( splashModelObj: SplashModel(), ))

..add(SplashInitialEvent()), );

child: SplashScreen(),

@override

Widget build (BuildContext context) {

return BlocBuilder SplashBloc, SplashState>(

builder: (context, state) {

return SafeArea(

body: SizedBox(

child: Column(

child: Scaffold( backgroundColor: appTheme.deepPurpleA200, width: double.maxFinite, children: [ width: double.maxFinite, padding: EdgeInsets.symmetric( horizontal: 16.h, vertical: 314.h, ),

Container(

children: [

child: Column( mainAxisAlignment: MainAxisAlignment.center, _buildSocialMediaColumn(context), SizedBox(height: 4.h)

/// Section Widget

Widget_buildSocialMediaColumn(BuildContext context) {

return SizedBox(

width: double.maxFinite,

child: Column(

children: [

CustomImageView( imagePath: ImageConstant.imgSocialMedial, height: 120.h, width: 120.h, ), SizedBox(height: 20.h),

Text(

"lbl_social".tr, style: theme.textTheme.displaysmall, )

1,

},

);

}