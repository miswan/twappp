import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/listfortysix_item_model.dart';

class ListfortysixItemWidget extends StatelessWidget {
  final ListfortysixItemModel model;

  const ListfortysixItemWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: model.image ?? ImageConstant.imgEllipse11,
      height: 96.h,
      width: 96.h,
      radius: BorderRadius.circular(8.h),
    );
  }
}
