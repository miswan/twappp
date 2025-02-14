import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/contentcard_item_model.dart';

class ContentcardItemWidget extends StatelessWidget {
  const ContentcardItemWidget(
    this.contentcardItemModelobj, {
    Key? key,
    this.onTapProfiledetails,
  }) : super(key: key);

  final ContentcardItemModel contentcardItemModelobj;
  final VoidCallback? onTapProfiledetails;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 356.h,
      child: Column(
        children: [
          CustomImageView(
            imagePath: contentcardItemModelobj.twentysevenone,
            height: 540.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(14.h),
          ),
          SizedBox(height: 12.h),
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: onTapProfiledetails,
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse11,
                    height: 50.h,
                    width: 50.h,
                    radius: BorderRadius.circular(24.h),
                  ),
                  SizedBox(width: 18.h),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          contentcardItemModelobj.rosaliaTwo ?? '',
                          style: theme.textTheme.titleLarge,
                        ),
                        SizedBox(height: 4.h),
                        Text(
                          contentcardItemModelobj.duration ?? '',
                          style: CustomTextStyles.bodyMediumBluegray400,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
