import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/list_item_model.dart';

class ListItemWidget extends StatelessWidget {
  final ListItemModel model;

  const ListItemWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 48.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: model.image ?? ImageConstant.imgEllipse11,
            height: 48.h,
            width: 48.h,
            radius: BorderRadius.circular(24.h),
          ),
          SizedBox(height: 4.h),
          Text(
            model.name ?? "",
            style: theme.textTheme.labelLarge,
          ),
        ],
      ),
    );
  }
}
