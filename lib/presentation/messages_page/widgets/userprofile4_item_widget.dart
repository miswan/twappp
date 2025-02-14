import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/userprofile4_item_model.dart';

class Userprofile4ItemWidget extends StatelessWidget {
  final Userprofile4ItemModel model;

  const Userprofile4ItemWidget(this.model, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.adaptSize,
          width: 60.adaptSize,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.h),
            border: Border.all(
              color: appTheme.deepPurpleA200,
              width: 2.h,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(30.h),
            child: CustomImageView(
              imagePath: model.imagePath,
              height: 60.adaptSize,
              width: 60.adaptSize,
            ),
          ),
        ),
        SizedBox(height: 4.v),
        Text(
          model.userName,
          style: theme.textTheme.labelLarge,
        ),
      ],
    );
  }
}
