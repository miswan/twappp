

import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class AppbarTrailingImage extends StatelessWidget {

AppbarTrailingImage(

{Key? key,

this.imagePath,

this.height,

this.width,

this.onTap,

this.margin})

: super(

key: key,

);

final double? height;

final double? width;

final String? imagePath;

final Function? onTap;

final EdgeInsetsGeometry? margin;

@override

Widget build (BuildContext context) {

return Padding(

padding: margin ?? EdgeInsets.zero,

child: Inkwell(

onTap: () {

onTap?.call();

},

child: CustomImageView(

imagePath: imagePath!,

width: width ?? 24.h,

height: height ?? 24.h, );

fit: BoxFit.contain,

),

),

}