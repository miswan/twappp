import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension RadioStyleHelper on CustomRadioButton {

static BoxDecoration get fillErrorContainer => BoxDecoration(

color: theme.colorscheme.errorContainer, borderRadius: BorderRadius.circular(24.h), );

// ignore_for_file: must_be_immutable

class CustomRadioButton extends StatelessWidget {

CustomRadioButton(

{Key? key,

required this.onChange,

this.decoration,

this.alignment,

this.isRightCheck,

this.iconSize,

this.groupValue,

this.text,

this.width,

this.padding,

this.textstyle,

this.value, this.overflow, this.gradient, this.backgroundColor, this.isExpandedText = false}) key: key, );

this.textAlignment,

: super(

final BoxDecoration? decoration;

final Alignment? alignment;

final bool? isRightCheck;

final double? iconSize;

String? value;

final String? groupValue;

final Function(String) onChange;

final String? text;

final double? width;

final EdgeInsetsGeometry? padding;

final TextStyle? textstyle;

final TextOverflow? overflow;

final TextAlign? textAlignment;

final Gradient? gradient;

final color? backgroundColor;

final bool isExpandedText;
@override

Widget build (BuildContext context) {

return alignment != null

? Align(

alignment: alignment ?? Alignment.center,

child: buildRadioButtonWidget)

: buildRadioButtonWidget;

}

bool get isGradient => gradient != null;

BoxDecoration get gradientDecoration => BoxDecoration (gradient: gradient);

Widget get buildRadioButtonWidget => GestureDetector(

onTap: () {

}, ),

onChange(value!);

child: Container(

decoration: decoration,

width: width,

padding: padding,

child: (isRightCheck ?? false)

? rightSideRadioButton

:leftSideRadioButton,

);

Widget get leftSideRadioButton => Row (

children: [

radioButtonwidget,

SizedBox(

width: text != null && text!.isNotEmpty ? 8 : 0, ),

isExpandedText ? Expanded (child: textwidget): textwidget ],

);

Widget get rightSideRadioButton => Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween,

children: [

isExpandedText ? Expanded (child: textwidget): textwidget,

SizedBox(

width: text != null && text!.isNotEmpty ? 8 : 0, ),

radioButtonWidget

],

);

Widget get textwidget => Text(

);

text ?? "".

textAlign: textAlignment ?? TextAlign.start,

overflow: overflow,

style: textstyle ?? theme.textTheme.titleMedium,

Widget get radioButtonWidget => SizedBox(

height: iconSize,

width: iconSize,

child: Radio<String>(

visualDensity: VisualDensity(

),

vertical: -4,

horizontal: -4,

value: value ??

groupValue: groupValue,

onChanged: (value) {

onChange (value!);

},

),

);

BoxDecoration get radioButtonDecoration =>

BoxDecoration(color: backgroundColor);