import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeHelper {
  static ThemeData get theme => ThemeData(
        colorScheme: ColorScheme.light(
          primary: appTheme.deepPurpleA200,
        ),
        textTheme: TextThemes.textTheme,
      );
}

class AppTheme {
  Color get gray50 => const Color(0xFFF9FAFB);
  Color get deepPurpleA200 => const Color(0xFF7B61FF);
  Color get black90001 => const Color(0xFF000000);
  Color get blueGray400 => const Color(0xFF8D8B95);
}

final AppTheme appTheme = AppTheme();

class TextThemes {
  static TextTheme get textTheme => TextTheme(
        headlineLarge: TextStyle(
          color: appTheme.deepPurpleA200,
          fontSize: 32.sp,
          fontWeight: FontWeight.w700,
        ),
        titleMedium: TextStyle(
          color: appTheme.black90001,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          color: appTheme.blueGray400,
          fontSize: 12.sp,
          fontWeight: FontWeight.w400,
        ),
      );
}
