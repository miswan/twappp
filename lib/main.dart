
import 'package:flutter/material.dart';

import 'package:flutter/services.dart';

import 'package:flutter_localizations/flutter_localizations.dart';

import 'core/app_export.dart';

var globalMessengerKey = GlobalKey ScaffoldMessengerstate>();

import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Future.wait([

SystemChrome.setPreferredorientations([DeviceOrientation.portraitup])

]).then((value) {

PrefUtils().init();

runApp(MyApp());

});

}

class MyApp extends StatelessWidget {

@override

Widget build(BuildContext context) {

return Sizer(

builder: (context, orientation, deviceType) {

return BlocProvider(

create: (context) => ThemeBloc( ThemeState( themeType: PrefUtils().getThemeData(), ), ), ),

child: BlocBuilder ThemeBloc, ThemeState>(

builder: (context, state) {

return MaterialApp(

theme: theme,

title: 'TWApp',

builder: (context, child) {

return MediaQuery(

data: MediaQuery.of(context).copywith( textScaler: TextScaler.linear(1.0), ), child: child!,

);

navigatorKey: NavigatorService.navigatorkey,

}, debugShowCheckedModeBanner: false, localizationsDelegates: [ AppLocalizationDelegate(), GlobalMaterialLocalizations.delegate, GlobalwidgetsLocalizations.delegate, GlobalCupertinoLocalizations.delegate ],

supportedLocales: [

'en',

Locale( )

], initialRoute: AppRoutes.initialRoute, routes: AppRoutes.routes, );

}, }, );

}