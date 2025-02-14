import 'package:flutter/material.dart';

import '../../core/app_export.dart';

class AppbarLeadingImageOne extends Statelesswidget {
  AppbarLeadingImageOne(
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
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Inkwell(
        borderRadius: BorderRadius.circular(
          24.h,
        ),
        onTap: () {
          onTap?.call();
        },
        child: CustomImageView(
          imagePath: imagePath!,
          height: height ?? 24.h,
          width: width ?? 24.h,
          fit: BoxFit.contain,
          radius: BorderRadius.circular(
            24.h,
          ),
        ),
      ),
    );
  }
}
