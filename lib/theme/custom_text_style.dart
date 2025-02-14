import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension TextStyleExtension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get heebo {
    return copyWith(
      fontFamily: 'Heebo',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
class CustomTextStyles {
  // Body text style
  static TextStyle get bodyLargeBlack90001 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 18.fSize,
      );

  static TextStyle get bodyLargeBluegray100 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 18.fSize,
      );

  static TextStyle get bodyLargeBluegray10018 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray100,
        fontSize: 18.fSize,
      );

  static TextStyle get bodyLargeBluegray400 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
        fontSize: 18.fSize,
      );

  static TextStyle get bodyLargeBluegray400_1 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray400,
      );

  static TextStyle get bodyLargeGray600 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray600,
      );

  static TextStyle get bodyLargeHeeboBluegray100 =>
      theme.textTheme.bodyLarge!.heebo.copyWith(
        color: appTheme.blueGray100,
        fontSize: 18.fSize,
      );

  static TextStyle get bodyLargeIndigo100 =>
      theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.indigo100,
        fontSize: 18.fSize,
      );

  static TextStyle get bodyLargePrimaryContainer =>
      theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );

  static TextStyle get bodyMediumBluegray100 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray100,
      );

  static TextStyle get bodyMediumBluegray400 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray400,
      );

  static TextStyle get bodyMediumGray500 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );

  static TextStyle get bodyMediumGray600 =>
      theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray600,
      );

  static TextStyle get bodyMediumPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );

  static TextStyle get bodySmallDeeppurpleA200 =>
      theme.textTheme.bodySmall!.copyWith(
        color: appTheme.deepPurpleA200,
      );

  // Headline text style
  static TextStyle get headlineLargeBlack90001 =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get headlineLargePrimary =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.primary,
      );

  // Label text style
  static TextStyle get labelLargeBluegray400 =>
      theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray400,
      );

  static TextStyle get labelLargePrimary =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get labelMediumBluegray100 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.blueGray100,
      );

  static TextStyle get labelMediumDeeppurpleA200 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.deepPurpleA200,
      );

  static TextStyle get labelMediumPrimary =>
      theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
      );

  // Title text style
  static TextStyle get titleLargeBlack900 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );

  static TextStyle get titleLargeDeeppurpleA200 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurpleA200,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleLargeDeeppurpleA200_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.deepPurpleA200,
      );

  static TextStyle get titleLargeGray200 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray200,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleLargeGray500 =>
      theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray500,
        fontWeight: FontWeight.w500,
      );

  static TextStyle get titleLargePrimary =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleMedium18 => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
      );

  static TextStyle get titleMediumBlack90001 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w700,
      );

  static TextStyle get titleMediumDeeppurpleA200 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumDeeppurpleA20018 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 18.fSize,
      );

  static TextStyle get titleMediumDeeppurpleA200SemiBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleMediumDeeppurpleA200_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: appTheme.deepPurpleA200,
      );

  static TextStyle get titleSmallBlack90001 =>
      theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black90001,
        fontWeight: FontWeight.w600,
      );

  static TextStyle get titleSmallPrimary =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.primary,
      );

  static TextStyle get titleSmallSemiBold =>
      theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
}
