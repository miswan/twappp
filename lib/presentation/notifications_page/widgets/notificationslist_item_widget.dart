import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/notificationslist_item_model.dart';

// ignore_for_file: must_be_immutable
class NotificationslistItemWidget extends StatelessWidget {
  NotificationslistItemWidget(this.notificationslistItemModelObj, {Key? key})
      : super(key: key);

  NotificationslistItemModel notificationslistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 146.h,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: notificationslistItemModelObj.image!,
            height: 54.h,
            width: 52.h,
            radius: BorderRadius.circular(26.h),
          ),
          SizedBox(width: 20.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  notificationslistItemModelObj.kevinhas!,
                  style: CustomTextStyles.titleMediumBlack90001,
                ),
                SizedBox(height: 6.h),
                Text(
                  notificationslistItemModelObj.duration!,
                  style: CustomTextStyles.bodyLargeGray600,
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
