import '../controller/trending_controller.dart';
import '../models/momentcard_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class MomentcardItemWidget extends StatelessWidget {
  MomentcardItemWidget(
    this.momentcardItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  MomentcardItemModel momentcardItemModelObj;

  var controller = Get.find<TrendingController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 221.v,
            width: 382.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: momentcardItemModelObj.image!.value,
                    height: 221.v,
                    width: 382.h,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 18.v,
                    ),
                    decoration: AppDecoration
                        .gradientOnPrimaryContainerToOnPrimaryContainer2
                        .copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgEllipse7,
                          height: 50.adaptSize,
                          width: 50.adaptSize,
                          radius: BorderRadius.circular(
                            25.h,
                          ),
                          margin: EdgeInsets.only(top: 135.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 16.h,
                            top: 135.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Obx(
                                () => Text(
                                  momentcardItemModelObj.username!.value,
                                  style: CustomTextStyles.titleLargePrimary_1,
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Obx(
                                () => Text(
                                  momentcardItemModelObj.timeAgo!.value,
                                  style: theme.textTheme.bodyMedium,
                                ),
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
          ),
          SizedBox(height: 22.v),
          Container(
            width: 335.h,
            margin: EdgeInsets.only(
              left: 16.h,
              right: 31.h,
            ),
            child: Obx(
              () => Text(
                momentcardItemModelObj.description!.value,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: CustomTextStyles.bodyLargePrimary,
              ),
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Obx(
                    () => Text(
                      momentcardItemModelObj.tag1!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    top: 1.v,
                  ),
                  child: Obx(
                    () => Text(
                      momentcardItemModelObj.tag2!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Obx(
                    () => Text(
                      momentcardItemModelObj.tag3!.value,
                      style: theme.textTheme.bodyMedium,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 52.v),
        ],
      ),
    );
  }
}
