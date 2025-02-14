import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/userprofile5_item_model.dart';

class Userprofile5ItemWidget extends StatelessWidget {
  final Userprofile5ItemModel model;

  const Userprofile5ItemWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          CustomImageView(
            imagePath: model.imagePath,
            height: 50.adaptSize,
            width: 50.adaptSize,
            radius: BorderRadius.circular(25.h),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 3.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  model.userName,
                  style: theme.textTheme.titleMedium,
                ),
                SizedBox(height: 4.v),
                Text(
                  model.lastMessage,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.symmetric(vertical: 15.v),
            child: Text(
              model.time,
              style: theme.textTheme.bodySmall,
            ),
          ),
        ],
      ),
    );
  }
}
