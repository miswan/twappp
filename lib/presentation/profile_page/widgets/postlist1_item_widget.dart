import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/postlist1_item_model.dart';

class Postlist1ItemWidget extends StatelessWidget {
  final Postlist1ItemModel postlist1ItemModelObj;

  const Postlist1ItemWidget(this.postlist1ItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 22.h,
      ),
      decoration: BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadiusStyle.roundedBorder14,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(2, 1),
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgEllipse211,
                height: 50.h,
                width: 50.h,
                radius: BorderRadius.circular(24.h),
              ),
              SizedBox(width: 16.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      postlist1ItemModelObj.rosaliaTwo!,
                      style: CustomTextStyles.titleMedium18,
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      postlist1ItemModelObj.duration!,
                      style: CustomTextStyles.labelMediumBluegray100,
                    ),
                  ],
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgGridPrimary,
                height: 6.h,
                width: 30.h,
              ),
            ],
          ),
          SizedBox(height: 16.h),
          Text(
            postlist1ItemModelObj.mostpeople!,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyLarge,
          ),
          SizedBox(height: 16.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 4.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFavoritePrimary,
                  height: 16.h,
                  width: 18.h,
                  margin: EdgeInsets.only(bottom: 2.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                  child: Text(
                    postlist1ItemModelObj.zipcode!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgUserPrimary,
                  height: 18.h,
                  width: 18.h,
                  margin: EdgeInsets.only(left: 28.h),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                  child: Text(
                    postlist1ItemModelObj.eighthundred!,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsPrimary1,
                  height: 24.h,
                  width: 54.h,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
