
import 'package:flutter/material.dart';



import '../core/app_export.dart';

// ignore_for_file: must_be_immutable

CustomCheckboxButton(

class CustomCheckboxButton extends StatelessWidget {

{Key? key,

required this.onChange,

this.decoration,

this.alignment,

this.isRightCheck,

this.iconSize,

this.value,

this.text, this.width, this.padding, this.textstyle, this.overflow, this.textAlignment, : super( );

this.isExpandedText false})

key: key,

final BoxDecoration? decoration;

final Alignment? alignment;

final bool? isRightCheck;

final double? iconSize;

bool? value;

final Function (bool) onchange;

final String? text;

final double? width;

final EdgeInsetsGeometry? padding;

final TextStyle? textstyle;

final Textoverflow? overflow;

final TextAlign? textAlignment;

final bool isExpandedText;

@override

Widget build (BuildContext context) {

return alignment != null ? Align( alignment: alignment ?? Alignment.center, child: buildCheckBoxWidget) : buildCheckBoxWidget;

);

}

Widget get buildCheckBoxwidget => GestureDetector(

onTap: () { value = ! (value!); onChange(value!); }, child: Container( decoration: decoration, width: width,

padding: padding, child: (isRightCheck ?? false) ? rightsideCheckbox: leftsideCheckbox, ),

Widget get leftSideCheckbox => Row(

mainAxisSize: MainAxisSize.min, children: [ checkboxWidget, SizedBox( width: text != null && text!.isNotEmpty ? 8 : 0, ), isExpandedText ? Expanded (child: textwidget): textwidget ],

);

Widget get rightSideCheckbox => Row(

mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [ isExpandedText ? Expanded (child: textwidget): textwidget, SizedBox( width: text != null && text!.isNotEmpty ? 8 : 0, ), checkboxWidget ],

);

Widget get textwidget => Text(

text?? " textAlign: textAlignment ?? TextAlign.start, overflow: overflow,

style: textstyle,

); Widget get checkboxWidget => SizedBox( height: iconSize ?? 10.h, width: iconSize ?? 10.h, child: Checkbox( visualDensity: VisualDensity( vertical: -4, horizontal: -4, ), value: value ?? false, onChanged: (value) { onChange (value!); },

),