o's Application1 > lib> widgets >

custom_icon_button.dart

import 'package:flutter/material.dart';

import '../core/app_export.dart';

extension IconButtonStyleHelper on CustomIconButton {

static BoxDecoration get fillDeepPurpleATL32 => BoxDecoration(

color: appTheme.deepPurpleA200, borderRadius: BorderRadius.circular(32.h), );

static BoxDecoration get fillDeepPurpleATL24 => BoxDecoration(

color: appTheme.deepPurpleA200, borderRadius: BorderRadius.circular(24.h), );

static BoxDecoration get fillPrimary => BoxDecoration(

color: theme.colorscheme.primary, borderRadius: BorderRadius.circular(24.h), );

static BoxDecoration get outlinePrimary => BoxDecoration(

borderRadius: BorderRadius.circular(16.h), border: Border.all( color: theme.colorscheme.primary, width: 1.h, ),

static BoxDecoration get none => BoxDecoration();

class CustomIconButton extends Statelesswidget {

CustomIconButton(

{Key? key,

this.alignment,

this.height,

this.width, this.decoration, this.padding, this.onTap, this.child})

: super(

key: key, );

final Alignment? alignment;

final double? height;

final double? width;

final BoxDecoration? decoration;

final EdgeInsetsGeometry? padding;

final VoidCallback? onTap;

final widget? child;

@override

Widget build (BuildContext context) {

return alignment != null

? Align(

alignment: alignment ?? Alignment.center, child: iconButtonWidget)

: iconButtonwidget;

);

Widget get iconButtonWidget => SizedBox(

height: height ?? 0,

width: width ?? 0,

child: DecoratedBox(

decoration: decoration ?? BoxDecoration( color: appTheme.deepPurpleA200, borderRadius: BorderRadius.circular(20.h), ),

child: IconButton(

padding: padding ?? EdgeInsets.zero,

onPressed: onTap,

icon: child ?? Container(),

),

);