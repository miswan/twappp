import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Custom appbar subtitle widget that displays text with custom styling
class AppbarSubtitleOne extends StatelessWidget {
  const AppbarSubtitleOne({
    Key? key,
    required this.text,
    this.onTap,
    this.margin,
  }) : super(key: key);

  final String text;
  final Function()? onTap;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: Text(
          text,
          overflow: TextOverflow.ellipsis,
          style: CustomTextStyles.titleMediumDeeppurpleA200.copyWith(
            color: appTheme.deepPurpleA200,
          ),
        ),
      ),
    );
  }
}
