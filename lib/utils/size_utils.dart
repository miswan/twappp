import 'package:flutter/material.dart';

/// Extensions for size calculations
extension SizeExtension on num {
  double get fSize => this * 1.0;
  double get sp => this * 1.0;
}

/// Size utilities for responsive design
class SizeUtils {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}
