
import 'package:flutter/material.dart'; import '../core/app_export.dart';

LightCodeColors get appTheme => ThemeHelper().themeColor(); ThemeData get theme => ThemeHelper().themeData();

/// Helper class for managing themes and colors.

// ignore_for_file: must_be_immutable

class ThemeHelper {

// The current app theme var_appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app Map<String, LightCodeColors> _supportedCustomColor = { 'lightCode': LightCodeColors() };

// A map of color schemes supported by the app Map<String, Colorscheme> _supportedColorScheme = { 'lightCode': ColorSchemes.lightCodeColorScheme };

/// Returns the lightCode colors for the current theme. LightCodeColors_getThemeColors() { return_supportedCustomColor[_appTheme] ?? LightCodeColors(); }

/// Returns the current theme data. ThemeData_getThemeData() { var colorscheme _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorscheme; return ThemeData(

visualDensity: VisualDensity.standard, colorscheme: colorscheme, textTheme: TextThemes.textTheme(colorscheme), scaffoldBackgroundColor: colorScheme.primary, outlinedButtonTheme: OutlinedButtonThemeData( style: OutlinedButton.styleFrom( backgroundColor: Colors.transparent, side: BorderSide( color: appTheme.deepPurpleA200, width: 1.h, ), shape: RoundedRectangleBorder(

borderRadius: BorderRadius.circular(16.h), ), visualDensity: const VisualDensity( vertical: -4, horizontal: -4, ), padding: EdgeInsets.zero, ),

),

elevatedButtonTheme: ElevatedButtonThemeData(

style: ElevatedButton.styleFrom(

backgroundColor: appTheme.deepPurpleA200,

shape: RoundedRectangleBorder(

borderRadius: BorderRadius.circular(10.h), ), elevation: 0, visualDensity: const VisualDensity( vertical: -4, horizontal: -4, ), padding: EdgeInsets.zero, ),

), radioTheme: RadioThemeData( fillcolor: WidgetStateColor.resolvewith((states) { if (states.contains (Widgetstate.selected)) { return colorscheme.primary; }

return Colors.transparent; }), visualDensity: const VisualDensity( vertical: -4, horizontal: -4, ), ),

checkboxTheme: CheckboxThemeData(

fillcolor: WidgetStateColor.resolvewith((states) {

if (states.contains(WidgetState.selected)) {

return colorscheme.primary;

}

return Colors.transparent; }), side: Borderside( width: 1, ), visualDensity: const VisualDensity( vertical: -4, horizontal: -4, ),

), dividerTheme: DividerThemeData( thickness: 2, space: 2, color: appTheme.gray50, );

/// Returns the lightCode colors for the current theme. LightCodeColors themeColor() => _getThemeColors();

/// Returns the current theme data.

ThemeData themeData() => _getThemeData();

}
/// Class containing the supported text theme styles.

class TextThemes {

static TextTheme textTheme (ColorScheme colorscheme) => Text Theme (

bodyLarge: Textstyle(

),

color: colorscheme.primary,

fontSize: 16.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w400,

bodyMedium:TextStyle(

),

color: colorScheme.primary,

fontSize: 14.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w400,

bodySmall: Textstyle(

), displayMedium: TextStyle(

color: colorscheme.primary,

fontSize: 12.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w400,

),

color: colorscheme.primary,

fontSize: 40.fsize, fontFamily: 'Inter',

fontweight: FontWeight.w700,

displaysmall:TextStyle(

),

color: colorscheme.primary,

fontSize: 36.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w500,

headlineLarge: Textstyle(

), headlineSmall: Textstyle(

color: appTheme.deepPurpleA200,

fontSize: 32.fsize,

fontFamily: 'Inter',

fontweight: Fontweight.w700,

), labelLarge: Textstyle(

color: appTheme.deepPurpleA200,

fontsize: 24.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w700,

), labelMedium: TextStyle(

color: appTheme.black90001,

fontsize: 12.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w500,

color: appTheme.blueGray400,

fontsize: 10.fsize,

fontFamily: 'Inter',

fontweight: Fontweight.w500,

), titleLarge: Textstyle(

color: appTheme.black90001,

fontSize: 20.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w600,

),

titleMedium: TextStyle(

),

color: colorscheme.primary,

fontsize: 16.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w500,

titleSmall: TextStyle(

color: appTheme.deepPurpleA200,

fontSize: 14.fsize,

fontFamily: 'Inter',

fontweight: FontWeight.w500,

);

),
/// Class containing the supported color schemes.

class ColorSchemes {

static final lightCodeColorscheme = ColorScheme.light(

);

primary: Color (0XFFFFFFFF),

primaryContainer: Color (OXFF525058),

errorContainer: Color (OXFFA793F0),

onPrimary: Color (0XFF2F2E32),

onPrimaryContainer: Color(0x00080808),

}

/// Class containing custom colors for a lightcode theme.

class LightCodeColors {

// Black

Color get black900 => Color (OXFF0C0B0D);

Color get black90001 => Color(0XFF000000);

// Blue

Color get blue200 => Color(0XFF96CBFC);

Color get blue500 => Color(0XFF1D9BF0);

Color get blueA400 => Color (0XFF1877F2);

// BlueGray

Color get blueGray100 => Color (OXFFCCCBCF);

Color get blueGray400 => Color (0XFF8D8B95);

Color get blueGray900 => Color (0XFF343434);

// Cyan

Color get cyan300 => Color(0XFF5EE1D9);

// DeepPurple

color get deepPurpleA200 => Color (0XFF8165EA);

// Gray

Color get gray200 => Color(0XFFE8E8EA);

Color get gray300 => Color(0XFFE3E4E8);

Color get gray50 => Color (0XFFF9F7FE);

Color get gray500 => Color(0XFF9897A0);

Color get gray5001 => Color (0XFFF9F9FA);

Color get gray600 => Color(0XFF75737D);

// Indigo

Color get indigo100 => Color(0XFFC0B2F4);

Color get indigoA100 => Color(0XFF9896FC);

// LightGreen

Color get lightGreenA200 => Color(0XFFA2FF69);

Color get lightGreenA700 => Color (0XFF3DFF39);

// Purple

Color get purpleA100 => Color (0XFFEA72F5);

// Red

Color get red400 => Color(0XFFE34848);

Color get red700 => Color(0XFFD13329);

// Teal

Color get tealA700 => Color (0XFF00B68A);

// Yellow

}

color get yellow300 => Color(0XFFFFDE69);

Color get yellowA200 => Color (0XFFFFFC00);