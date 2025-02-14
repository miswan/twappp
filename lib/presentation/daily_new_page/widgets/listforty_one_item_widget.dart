import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listforty_one_item_model.dart';

class ListfortyOneItemWidget extends StatelessWidget {
  final ListfortyOneItemModel listfortyOneItemModelObj;

  const ListfortyOneItemWidget(this.listfortyOneItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: listfortyOneItemModelObj.fortyOne,
      height: 166.h,
      width: 166.h,
      radius: BorderRadius.circular(14.h),
    );
  }
}
