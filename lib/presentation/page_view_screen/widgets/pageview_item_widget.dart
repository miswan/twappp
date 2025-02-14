import '../bloc/page_view_controller.dart';
import '../models/pageview_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class PageviewItemWidget extends StatelessWidget {
  PageviewItemWidget(
    this.pageviewItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  PageviewItemModel pageviewItemModelObj;

  var controller = Get.find<PageViewController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.adaptSize,
      width: 40.adaptSize,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.h,
        ),
        border: Border.all(
          color: theme.colorScheme.primary,
          width: 2.h,
        ),
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgEllipse940x40,
          ),
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
