import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/accountcounts_item_model.dart';

// ignore_for_file: must_be_immutable

class AccountcountsItemWidget extends Statelesswidget {
  AccountcountsItemWidget(this.accountcountsItemModelobj, {Key? key})
      : super(
          key: key,
        );

  AccountcountsItemModel accountcountsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 42.h,
      child: Column(
        children: [
          Text(
            accountscountsItemModelObj.post!,
            style: CustomTextStyles.titleLargeGray200,
          ),
          SizedBox(height: 10.h),
          Text(
            accountcountsItemModelObj.seventyfive!,
            style: CustomTextStyles.titleLargePrimary,
          )
        ],
      ),
    );
  }
}
