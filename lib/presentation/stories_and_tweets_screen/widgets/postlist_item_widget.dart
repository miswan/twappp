import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../models/postlist_item_model.dart';

class PostlistItemWidget extends StatelessWidget {
  PostlistItemWidget(this.postlistItemModelObj, {Key? key}) : super(key: key);

  PostlistItemModel postlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 22.h),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse12,
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
                                  postlistItemModelObj.albertoconnor!,
                                  style: theme.textTheme.titleLarge,
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  postlistItemModelObj.duration!,
                                  style: CustomTextStyles.bodyMediumBluegray400,
                                ),
                              ],
                            ),
                          ),
                          CustomOutlinedButton(
                            width: 76.h,
                            text: "lbl_follow".tr,
                          ),
                        ],
                      ),
                      SizedBox(height: 16.h),
                      SizedBox(
                        width: 348.h,
                        child: Text(
                          postlistItemModelObj.introduceiam!,
                          maxLines: 3,
                          overflow: TextOverflow.ellipsis,
                          style:
                              CustomTextStyles.bodyLargeBluegray400_1.copyWith(
                            height: 1.50,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Container(
                        width: double.maxFinite,
                        margin: EdgeInsets.only(right: 18.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.img22,
                              height: 114.h,
                              width: 84.h,
                              radius: BorderRadius.circular(5.h),
                            ),
                            SizedBox(width: 8.h),
                            CustomImageView(
                              imagePath: ImageConstant.img25,
                              height: 114.h,
                              width: 84.h,
                              radius: BorderRadius.circular(5.h),
                            ),
                            SizedBox(width: 8.h),
                            CustomImageView(
                              imagePath: ImageConstant.img411,
                              height: 114.h,
                              width: 84.h,
                              radius: BorderRadius.circular(5.h),
                            ),
                            SizedBox(width: 8.h),
                            CustomImageView(
                              imagePath: ImageConstant.img16,
                              height: 114.h,
                              width: 84.h,
                              radius: BorderRadius.circular(5.h),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 16.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFavoriteDeepPurpleA2001,
                            height: 16.h,
                            width: 18.h,
                            margin: EdgeInsets.only(bottom: 2.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                            child: Text(
                              postlistItemModelObj.zipcode!,
                              style: CustomTextStyles.bodySmallDeeppurpleA200,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgUserDeepPurpleA2001,
                            height: 18.h,
                            width: 18.h,
                            margin: EdgeInsets.only(left: 28.h),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                            child: Text(
                              postlistItemModelObj.eighthundred!,
                              style: CustomTextStyles.bodySmallDeeppurpleA200,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsDeepPurpleA2002,
                            height: 24.h,
                            width: 54.h,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
