import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/listmerry_new_item_model.dart';

class ListmerryNewItemWidget extends StatelessWidget {
  const ListmerryNewItemWidget(this.listmerryNewItemModelObj, {Key? key})
      : super(key: key);

  final ListmerryNewItemModel listmerryNewItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img193,
            height: 144.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 18.h),
          Text(
            listmerryNewItemModelObj.merrynewyear!,
            style: CustomTextStyles.titleSmallBlack90001,
          ),
          SizedBox(height: 4.h),
          Text(
            listmerryNewItemModelObj.price!,
            style: CustomTextStyles.labelLargeBluegray400,
          )
        ],
      ),
    );
  }
}
