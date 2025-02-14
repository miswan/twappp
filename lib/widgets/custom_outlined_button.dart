
import 'package:flutter/material.dart';

import '../core/app_export.dart';

import 'base_button.dart';

class CustomOutlinedButton extends BaseButton {

CustomOutlinedButton(

{Key? key,

this.decoration,

this.leftIcon,

this.rightIcon,

this.label,

VoidCallback? onPressed,

ButtonStyle? buttonstyle,

TextStyle?buttonTextStyle,

bool? isDisabled,

Alignment? alignment,

double? height,

double? width,

EdgeInsets? margin,

required string text})

: super(

);

text: text,

onPressed: onPressed,

buttonStyle: buttonStyle,

isDisabled: isDisabled,

buttonTextStyle: buttonTextStyle,

height: height,

alignment: alignment,

width: width,

margin: margin,

final BoxDecoration? decoration;

final Widget? leftIcon;

final widget? rightIcon;

final widget? label;

@override

Widget build (BuildContext context) {

return alignment != null

? Align(

alignment: alignment ?? Alignment.center,

child: buildOutlinedButtonWidget)

: buildoutlinedButtonWidget;

Widget get buildOutlinedButtonWidget => Container(

height: this.height ?? 32.h,

width: this.width ?? double.maxFinite,

margin: margin,

decoration: decoration,

child: OutlinedButton(

style: buttonstyle,

onPressed: isDisabled ?? false? null: onPressed ?? () {},

child: Row(

mainAxisAlignment: MainAxisAlignment.center,

crossAxisAlignment: CrossAxisAlignment.center,

children: [

leftIcon ?? const SizedBox.shrink(),

Text(

), style: buttonTextStyle ?? theme.textTheme.titleSmall,

text,

rightIcon ?? const SizedBox.shrink()

}

);