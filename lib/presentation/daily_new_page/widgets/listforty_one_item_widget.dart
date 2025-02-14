import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/listforty_one_item_model.dart';

// ignore_for_file: must_be_immutable

class ListfortyOneItemWidget extends Statelesswidget {
  ListfortyOneItemWidget(this.listfortyOneItemModelObj, {Key? key})
      : super(
          key: key,
        );

  ListfortyOneItemModel listfortyOneItemModelobj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 166.h,
      child: CustomImageView(
        imagePath: listfortyOneItemModelObj.fortyone!,
        height: 166.h,
        width: 166.h,
        radius: BorderRadius.circular(
          10.h,
        ),
      ),
    );
  }
}
