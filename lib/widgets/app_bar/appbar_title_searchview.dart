import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../custom_search_view.dart';

class AppbarTitleSearchview extends StatelessWidget {
  const AppbarTitleSearchview({
    Key? key,
    this.hintText,
    this.controller,
    this.margin,
  }) : super(key: key);

  final String? hintText;
  final TextEditingController? controller;
  final EdgeInsetsGeometry? margin;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.h),
          color: theme.colorScheme.secondaryContainer,
        ),
        child: CustomSearchView(
          controller: controller,
          hintText: hintText ?? "lbl_search".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 10.h,
          ),
          borderRadius: 8.h,
          fillColor: Colors.transparent,
        ),
      ),
    );
  }
}
