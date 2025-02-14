
import 'package:flutter/material.dart';

class BaseButton extends Statelesswidget {

BaseButton(

{Key? key,

required this.text,

this.onPressed,

this.buttonstyle,

this.buttonTextStyle,

this.isDisabled,

this.height,

this.width,

this.margin,

this.alignment})

: super(

key: key,

);

final String text;

final VoidCallback? onPressed;

final Buttonstyle? buttonstyle;

final Textstyle? buttonTextStyle;

final bool? isDisabled;

final double? height;

final double? width;

final EdgeInsets? margin;

final Alignment? alignment;

@override

Widget build (BuildContext context) { }

return const SizedBox.shrink();

}