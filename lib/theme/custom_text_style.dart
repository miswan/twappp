
import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension on Textstyle {

TextStyle get inter { return copywith( fontFamily: 'Inter', );

}

TextStyle get heebo {

return copywith( fontFamily: 'Heebo', );

}

}

/// A collection of pre-defined text styles for customizing text appearance,

/// categorized by different font families and weights.

/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {

// Body text style

static Textstyle get bodyLargeBlack90001 => theme.textTheme.bodyLarge!.copywith( color: appTheme.black90001, fontSize: 18.fSize, );

static Textstyle get bodyLargeBluegray100 => theme.textTheme.bodyLarge!.copywith( color: appTheme.blueGray100, fontSize: 18.fsize, );

static Textstyle get bodyLargeBluegray10018 => theme.textTheme.bodyLarge!.copyWith( color: appTheme.blueGray100, fontSize: 18.fsize, );

static Textstyle get bodyLargeBluegray400 => theme.textTheme.bodyLarge!.copywith( color: appTheme.blueGray400, fontSize: 18.fsize, );

static Textstyle get bodyLargeBluegray400_1 => theme.textTheme.bodyLarge!.copywith( color: appTheme.blueGray400, );

static TextStyle get bodyLargeGray600 => theme.textTheme.bodyLarge!.copywith(

color: appTheme.gray600, );

static Textstyle get bodyLargeHeeboBluegray100 => theme.textTheme.bodyLarge!.heebo.copyWith( color: appTheme.blueGray100, fontSize: 18.fsize, );

static Textstyle get bodyLargeIndigo100 => theme.textTheme.bodyLarge!.copywith( color: appTheme.indigo100, fontsize: 18.fsize,

);

static Textstyle get bodyLargePrimaryContainer theme.textTheme.bodyLarge!.copywith( color: theme.colorscheme.primaryContainer, );

static Textstyle get bodyMediumBluegray100 => theme.textTheme.bodyMedium!.copywith( color: appTheme.blueGray100,

);

static Textstyle get bodyMediumBluegray400 => theme.textTheme.bodyMedium!.copywith( color: appTheme.blueGray400,

); static Textstyle get bodyMediumGray500 => theme.textTheme.bodyMedium!.copywith( color: appTheme.gray500,

);

static Textstyle get bodyMediumGray600 => theme.textTheme.bodyMedium!.copywith( color: appTheme.gray600, );

static Textstyle get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copywith( color: theme.colorscheme.primaryContainer, );

static Textstyle get bodySmallDeeppurpleA200 theme.textTheme.bodySmall!.copyWith( color: appTheme.deepPurpleA200, );

// Headline text style

static Textstyle get headlineLargeBlack90001 => theme.textTheme.headlineLarge!.copywith( color: appTheme.black90001, fontweight: Fontweight.w600,

);

static Textstyle get headlineLargePrimary => theme.textTheme.headlineLarge!.copywith( color: theme.colorscheme.primary, );

// Label text style

static TextStyle get labelLargeBluegray400 => theme.textTheme.labelLarge!.copywith( color: appTheme.blueGray400,

);

static Textstyle get labelLargePrimary => theme.textTheme.labelLarge!.copywith( color: theme.colorscheme.primary,

);

static Textstyle get labelMediumBluegray100 => theme.textTheme.labelMedium!.copywith( color: appTheme.blueGray100,

);
static Textstyle get labelMediumDeeppurpleA200 => theme.textTheme.labelMedium!.copywith( color: appTheme.deepPurpleA200, );

static Textstyle get labelMediumPrimary => theme.textTheme.labelMedium!.copywith( color: theme.colorscheme.primary, );

// Title text style

static Textstyle get titleLargeBlack900 => theme.textTheme.titleLarge!.copywith( color: appTheme.black900, );

static TextStyle get titleLargeDeeppurpleA200 theme.textTheme.titleLarge!.copywith( color: appTheme.deepPurpleA200, fontweight: FontWeight.w700, );

static Textstyle get titleLargeDeeppurpleA200_1 => theme.textTheme.titleLarge!.copywith( color: appTheme.deepPurpleA200, );

static Textstyle get titleLargeGray200 => theme.textTheme.titleLarge!.copywith( color: appTheme.gray200, fontweight: FontWeight.w500, );

static Textstyle get titleLargeGray500 => theme.textTheme.titleLarge!.copywith( color: appTheme.gray500, fontweight: Fontweight.w500, );

static Textstyle get titleLargePrimary => theme.textTheme.titleLarge!.copywith( color: theme.colorscheme.primary, );

static Textstyle get titleMedium18 => theme.textTheme.titleMedium!.copywith( fontSize: 18.fsize, );

static Textstyle get titleMediumBlack90001 => theme.textTheme.titleMedium!.copywith( color: appTheme.black90001, fontweight: FontWeight.w700, );

static Textstyle get titleMediumDeeppurpleA200 => theme.textTheme.titleMedium!.copywith( color: appTheme.deepPurpleA200, fontweight: Fontweight.w600, );

static Textstyle get titleMediumDeeppurpleA20018 => theme.textTheme.titleMedium!.copywith( color: appTheme.deepPurpleA200, fontSize: 18.fSize, );

static Textstyle get titleMediumDeeppurpleA200SemiBold theme.textTheme.titleMedium!.copyWith( color: appTheme.deepPurpleA200, fontSize: 18.fsize, fontweight: FontWeight.w600,

);

static Textstyle get titleMediumDeeppurpleA200_1 => theme.textTheme.titleMedium!.copyWith( color: appTheme.deepPurpleA200, );

static Textstyle get titleSmallBlack90001 => theme.textTheme.titleSmall!.copywith( color: appTheme.black90001, fontweight: Fontweight.w600, );

static Textstyle get titleSmallPrimary => theme.textTheme.titleSmall!.copywith( color: theme.colorscheme.primary, );

static Textstyle get titleSmallSemiBold => theme.textTheme.titleSmall!.copyWith( fontweight: FontWeight.w600, );