import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../../../widgets/custom_icon_button.dart';

import '../models/listsave_one_item_model.dart';

// ignore_for_file: must_be_immutable

class ListsaveOneItemWidget extends Statelesswidget {
  ListsaveOneItemWidget(this.listsaveOneItemModelobj, {Key? key})
      : super(
          key: key,
        );

  ListsaveOneItemModel listsaveOneItemModelobj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          CustomIconButton(
            height: 64.h,
            width: 64.h,
            padding: EdgeInsets.all(14.h),
            decoration: IconButtonStyleHelper.fillDeepPurpleATL32,
            child: CustomImageView(
              imagePath: listsaveOneItemModelObj.saveOne!,
            ),
          ),
          SizedBox(height: 8.h),
          Text(
            listsaveoneItemModelObj.newpost!,
            overflow: Textoverflow.ellipsis,
            style: theme.textTheme.labelLarge,
          )
        ],
      ),
    );
  }
}
