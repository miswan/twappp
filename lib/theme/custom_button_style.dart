
import 'package:flutter/material.dart';

import '../core/app_export.dart';

/// A class that offers pre-defined button styles for customizing button appearance.

class CustomButtonStyles {

// Filled button style

static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(

);

backgroundColor: theme.colorscheme.primary,

shape: RoundedRectangleBorder(

),

borderRadius: BorderRadius.circular(24.h),

elevation: 0,

padding: EdgeInsets.zero,

// Outline button style

static ButtonStyle get outlineDeepPurpleATL16 => OutlinedButton.styleFrom(

backgroundColor: appTheme.deepPurpleA200,

side: BorderSide(

color: appTheme.deepPurpleA200,

width: 1,

),

shape: RoundedRectangleBorder(

borderRadius: BorderRadius.circular(16.h),

),

padding: EdgeInsets.zero,

);

static Buttonstyle get outlinePrimary => OutlinedButton.styleFrom(

backgroundColor: appTheme.deepPurpleA200,

side: BorderSide(

color: theme.colorscheme.primary,

width: 1,

),

shape: RoundedRectangleBorder(

borderRadius: BorderRadius.circular(24.h),

),

padding: EdgeInsets.zero,

);

static ButtonStyle get outlinePrimaryTL16 => OutlinedButton.styleFrom(

backgroundColor: Colors.transparent,

side: BorderSide(

color: theme.colorscheme.primary,

width: 1,

),

shape: RoundedRectangleBorder(

),

); padding: EdgeInsets.zero,

borderRadius: BorderRadius.circular(16.h),

// text button style

static Buttonstyle get none => Buttonstyle(

backgroundColor: WidgetstateProperty.all<color>(Colors.transparent),

elevation: WidgetstateProperty.all<double>(0),

padding: WidgetStateProperty.all<EdgeInsetsGeometry>(EdgeInsets.zero),

side: WidgetstateProperty.all<BorderSide>(

BorderSide(color: Colors.transparent),

));

}