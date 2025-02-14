import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

class AppbarTitleCircleimage extends StatelessWidget {
  static const double _defaultBorderRadius = 22.0;

  const AppbarTitleCircleimage({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(key: key);

  final String? imagePath;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(_defaultBorderRadius),
      onTap: onTap,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomImageView(
          imagePath: imagePath,
          height: 50.adaptSize,
          width: 50.adaptSize,
          fit: BoxFit.cover,
          radius: BorderRadius.circular(_defaultBorderRadius.h),
          errorBuilder: (context, error, stackTrace) => Container(
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(_defaultBorderRadius.h),
            ),
            child: Icon(Icons.person, color: Colors.grey[600]),
          ),
        ),
      ),
    );
  }
}
