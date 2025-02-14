import 'package:flutter/material.dart' hide SearchController;
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/recentsearches_item_model.dart';

// ignore_for_file: must_be_immutable
class RecentsearchesItemWidget extends StatelessWidget {
  RecentsearchesItemWidget(this.recentsearchesItemModelObj, {Key? key})
      : super(key: key);

  final RecentsearchesItemModel recentsearchesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomImageView(
          imagePath: recentsearchesItemModelObj.kevinAllsrub,
          height: 50.h,
          width: 50.h,
          radius: BorderRadius.circular(24.h),
        ),
        SizedBox(width: 24.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                recentsearchesItemModelObj.kevinallsrub1 ?? '',
                style: theme.textTheme.titleLarge,
              ),
              SizedBox(height: 4.h),
              Text(
                recentsearchesItemModelObj.yourefriends ?? '',
                style: CustomTextStyles.bodyMediumGray600,
              ),
            ],
          ),
        ),
        SizedBox(width: 24.h),
        _buildFollowButtonKevin(context),
      ],
    );
  }

  Widget _buildFollowButtonKevin(BuildContext context) {
    return CustomOutlinedButton(
      width: 76.h,
      text: "lbl_follow".tr,
      onPressed: () {
        // Add follow functionality here
      },
    );
  }
}
