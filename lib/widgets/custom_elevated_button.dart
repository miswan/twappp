o's Application1 > lib> widgets > custom_elevated_button.dart

import 'package:flutter/material.dart';

import '../core/app_export.dart';

import 'base_button.dart';

class CustomElevatedButton extends BaseButton {

CustomElevatedButton(

{Key? key,

this.decoration,

this.leftIcon,

this.rightIcon,

EdgeInsets? margin,

VoidCallback? onPressed,

ButtonStyle? buttonstyle,

Alignment? alignment,

TextStyle?buttonTextstyle,

bool? isDisabled,

double? height,

double? width,

required string text})

: super(

); height: height, width: width, alignment: alignment, margin: margin,

text: text,

onPressed: onPressed,

buttonStyle: buttonStyle,

isDisabled: isDisabled,

buttonTextStyle: buttonTextStyle,

final BoxDecoration? decoration;

class CustomElevatedButton extends StatelessWidget {
  final double? height;
  final double? width;
  final Alignment? alignment;
  final EdgeInsetsGeometry? margin;
  final String text;
  final VoidCallback? onPressed;
  final ButtonStyle? buttonStyle;
  final bool? isDisabled;
  final TextStyle? buttonTextStyle;
final Widget? leftIcon;
  final Widget? rightIcon;
  final BoxDecoration? decoration;

final widget? rightIcon;
  CustomElevatedButton({
    this.height,
    this.width,
    this.alignment,
    this.margin,
    required this.text,
    this.onPressed,
    this.buttonStyle,
    this.isDisabled = false,
    this.buttonTextStyle,
    this.leftIcon,
    this.rightIcon,
    this.decoration,
  });

@override

Widget build (BuildContext context) {

return alignment != null

? Align(

alignment: alignment ?? Alignment.center,

child: buildElevatedButtonWidget)

: buildElevatedButtonWidget;

Widget get buildElevatedButtonWidget => Container(

height: this.height ?? 50.h,

width: this.width ?? double.maxFinite,

margin: margin,

decoration: decoration,

child: ElevatedButton(

style: buttonstyle,

onPressed: isDisabled ?? false? null: onPressed ?? () {},

  Widget build(BuildContext context) {
    final button = ElevatedButton(
      style: buttonStyle,
      onPressed: isDisabled == true ? null : onPressed,
child: Row(

mainAxisAlignment: MainAxisAlignment.center,

crossAxisAlignment: CrossAxisAlignment.center,

children: [

1,

leftIcon ?? const SizedBox.shrink(),

          if (leftIcon != null) leftIcon!,
Text(

), CustomTextStyles.titleMediumDeeppurpleA20018,

text,
            style: buttonTextStyle,
          ),
          if (rightIcon != null) rightIcon!,
        ],
      ),
);

style: buttonTextStyle ??

rightIcon ?? const SizedBox.shrink()

}

);
    return Container(
      height: height,
      width: width,
      alignment: alignment ?? Alignment.center,
      margin: margin,
      decoration: decoration,
      child: button,
    );
  }
}

leftIcon ?? const SizedBox.shrink(),

          if (leftIcon != null) leftIcon!,
Text(

), CustomTextStyles.titleMediumDeeppurpleA20018,

text,

style: buttonTextStyle ??

rightIcon ?? const SizedBox.shrink()

}

            style: buttonTextStyle,
          ),
          if (rightIcon != null) rightIcon!,
        ],
      ),
);
