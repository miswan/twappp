import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  const CustomSearchView({
    Key? key,
    this.hintText,
    this.controller,
    this.contentPadding,
    this.borderRadius,
    this.fillColor,
  }) : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? contentPadding;
  final double? borderRadius;
  final Color? fillColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: CustomTextStyles.bodyMediumGray500,
        prefixIcon: Icon(
          Icons.search,
          color: theme.colorScheme.onSurface,
          size: 20,
        ),
        contentPadding: contentPadding,
        fillColor: fillColor,
        filled: fillColor != null,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius ?? 4),
          borderSide: BorderSide.none,
        ),
      ),
    );
  }
}
