import '../controller/stories_controller.dart';
import '../models/viewhierarchylist_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              height: 144.v,
              width: 147.h,
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Obx(
                    () => CustomImageView(
                      imagePath: viewhierarchylistItemModelObj.liveImage!.value,
                      height: 144.v,
                      width: 147.h,
                      radius: BorderRadius.circular(
                        10.h,
                      ),
                      alignment: Alignment.center,
                    ),
                  ),
                  CustomElevatedButton(
                    height: 20.v,
                    width: 54.h,
                    text: "lbl_live".tr,
                    margin: EdgeInsets.only(
                      left: 12.h,
                      top: 12.v,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 4.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgGroup9027,
                        height: 12.adaptSize,
                        width: 12.adaptSize,
                      ),
                    ),
                    buttonTextStyle: theme.textTheme.labelMedium!,
                    alignment: Alignment.topLeft,
                  ),
                ],
              ),
            ),
            Obx(
              () => CustomImageView(
                imagePath: viewhierarchylistItemModelObj.partyImage!.value,
                height: 144.v,
                width: 147.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 16.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Obx(
                    () => Text(
                      viewhierarchylistItemModelObj.liveText1!.value,
                      style: CustomTextStyles.titleSmallBlack900,
                    ),
                  ),
                ),
                SizedBox(height: 7.v),
                Obx(
                  () => Text(
                    viewhierarchylistItemModelObj.liveText2!.value,
                    style: CustomTextStyles.bodySmallGray50002,
                  ),
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    viewhierarchylistItemModelObj.partyText1!.value,
                    style: CustomTextStyles.titleSmallBlack900,
                  ),
                ),
                SizedBox(height: 6.v),
                Obx(
                  () => Text(
                    viewhierarchylistItemModelObj.partyText2!.value,
                    style: CustomTextStyles.bodySmallGray50002,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
