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

final Widget? leftIcon;

final widget? rightIcon;

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

child: Row(

mainAxisAlignment: MainAxisAlignment.center,

crossAxisAlignment: CrossAxisAlignment.center,

children: [

1,

leftIcon ?? const SizedBox.shrink(),

Text(

), CustomTextStyles.titleMediumDeeppurpleA20018,

text,

style: buttonTextStyle ??

rightIcon ?? const SizedBox.shrink()

}

);