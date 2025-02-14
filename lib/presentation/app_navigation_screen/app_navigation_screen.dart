
import 'package:flutter/material.dart';

import '../../core/app_export.dart';

import 'bloc/app_navigation_bloc.dart';

import 'models/app_navigation_model.dart';

class AppNavigationScreen extends Statelesswidget {

const AppNavigationScreen({Key? key})

: super(

key: key, );

app_navigation_screen.dart

static Widget builder (BuildContext context) {

return BlocProvider<AppNavigationBloc>(

create: (context) => AppNavigationBloc(AppNavigationState( )) appNavigationModelobj: AppNavigationModel(),

..add(AppNavigationInitialEvent()),

child: AppNavigationScreen(), );

}

@override

Widget build (BuildContext context) {

return BlocBuilder<AppNavigationBloc, AppNavigationstate>( builder: (context, state) {

return SafeArea(

child: Scaffold(

backgroundColor: Color (0XFFFFFFFF),

body: SizedBox(

width: 375.h,

child: Column(

children: [

Container(

decoration: BoxDecoration( ), color: color(0XFFFFFFFF),

child: Column(

children: [ SizedBox(height: 10.h),

Padding( padding: EdgeInsets.symmetric (horizontal: 20.h), child: Text( "App Navigation", textAlign: TextAlign.center, style: Textstyle( color: Color (OXFF000000), fontsize: 20.fsize, fontFamily: 'Roboto', fontweight: Fontweight.w400, ), ),

), padding: EdgeInsets.only(left: 20.h), child: Text(

SizedBox(height: 10.h),

Padding(

"Check your app's UI from the below demo screens of your app.",

textAlign: TextAlign.center, style: Textstyle( color: color(0XFF888888), fontsize: 16.fsize, fontFamily: 'Roboto', fontweight: Fontweight.w400, ),

), ), SizedBox(height: 5.h), Divider( height: 1.h, thickness: 1.h, color: color(0XFF000000),

1,

),

),

Expanded(

child: SingleChildScrollView(

child: Container(

decoration: BoxDecoration( ), color: color (OXFFFFFFFF),

child: Column(

children: [

_buildScreenTitle(

),

context, screenTitle: "Splash", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.splashScreen),

_buildScreenTitle(

),

context, screenTitle: "Onboarding One", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.onboardingOneScreen),

_buildScreenTitle(

),

context,

screenTitle: "Log In",

onTapScreenTitle: () =>

onTapScreenTitle(AppRoutes.logInScreen),

_buildScreenTitle(

),

context, screenTitle: "Forgot Password", onTapScreenTitle: () => onTapScreenTitle(

AppRoutes.forgotPasswordScreen),
_buildScreenTitle

context,

screenTitle: "Sign Up", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.signUpScreen),

_buildScreenTitle(

context, screenTitle: "Turn on Notifications", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.turnOnNotificationsScreen),

),

_buildScreenTitle(

context, screenTitle: "Invite Friends", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.inviteFriendsScreen),

),

_buildScreenTitle( context, screenTitle: "Trending posts", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.trendingPostsScreen),

),

buildScreenTitle(

context, screenTitle: "Stories", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.storiesScreen),

),

_buildScreenTitle(

context,

screenTitle: "Stories and Tweets", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.storiesAndTweetsScreen),

),

_buildScreenTitle(

context,

screenTitle: "Search", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.searchScreen),

),

_buildScreenTitle(

context, screenTitle: "Live", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.liveScreen),

),

_buildScreenTitle(

context, screenTitle: "For You", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.forYouScreen),

),

_buildScreenTitle(

context, screenTitle: "Page View", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.pageViewScreen),

),

_buildScreenTitle(

context,

screenTitle: "Account View", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.accountViewScreen),

),

_buildScreenTitle(

context,

screenTitle: "Account Details", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.accountDetailsScreen),

),

_buildScreenTitle(

context,

screenTitle: "Friends", onTapScreenTitle: () => onTapScreenTitle(AppRoutes.friendsScreen),

),

_buildScreenTitle(

context,

screenTitle: "Detailed Profile", onTapScreenTitle: () => onTapScreenTitle( AppRoutes.detailedProfileScreen),

)

}

/// Common widget

Widget_buildScreenTitle(

BuildContext context, {

required string screenTitle,

Function? onTapScreenTitle,

}) {

return GestureDetector(

onTap: () {

onTapScreenTitle?.call();

},

child: Container(

decoration: BoxDecoration(

color: color(0XFFFFFFFF),

),

child: Column(

children: [

SizedBox(height: 10.h),

Padding(

padding: EdgeInsets.symmetric (horizontal: 20.h),

child: Text(

screenTitle,

textAlign: TextAlign.center,

style: Textstyle(

color: color(0XFF000000),

fontsize: 20.fsize,

fontFamily: 'Roboto',

fontweight: FontWeight.w400,

),

),

),

SizedBox(height: 10.h),

SizedBox(height: 5.h),

Divider(

height: 1.h,

thickness: 1.h,

color: color(0XFF888888),

)

],

),

),

);

}

/// Common click event

void onTapScreenTitle(String routeName) {

NavigatorService.pushNamed (routeName);

}