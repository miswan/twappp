import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'theme_helper.dart';

import '../core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimary => BoxDecoration(
        color: theme.colorscheme.onPrimary,
      );

  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray50,
      );

  // Linear decorations
  static BoxDecoration get linear1 => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [theme.colorscheme.onPrimaryContainer, appTheme.blueGray900],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineDeepPurpleA => BoxDecoration(
        border: Border.all(
          color: appTheme.deepPurpleA200,
          width: 2.h,
        ),
      );

  static BoxDecoration get outlineGray => BoxDecoration(
        border: Border.all(
          color: appTheme.gray50,
          width: 1.h,
        ),
      );

  // Primary decorations
  static BoxDecoration get primary500 => BoxDecoration(
        color: appTheme.deepPurpleA200,
      );

  static BoxDecoration get primary5001 => BoxDecoration(
        color: appTheme.deepPurpleA200,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(2, 1),
          ),
        ],
      );

  // White decorations
  static BoxDecoration get white => BoxDecoration(
        color: theme.colorscheme.primary,
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder32 => BorderRadius.circular(32.h);
  static BorderRadius get circleBorder40 => BorderRadius.circular(40.h);
  static BorderRadius get circleBorder60 => BorderRadius.circular(60.h);

  // Custom borders
  static BorderRadius get customBorderTL30 => BorderRadius.vertical(
        top: Radius.circular(30.h),
      );

  // Rounded borders
  static BorderRadius get roundedBorder10 => BorderRadius.circular(10.h);
  static BorderRadius get roundedBorder14 => BorderRadius.circular(14.h);
  static BorderRadius get roundedBorder24 => BorderRadius.circular(24.h);
  static BorderRadius get roundedBorder5 => BorderRadius.circular(5.h);
}

class CustomTextStyles {
  static TextStyle get titleLargeDeeppurpleA200 => TextStyle(
        color: appTheme.deepPurpleA200,
        fontSize: 20.sp,
        fontWeight: FontWeight.w600,
      );
}
