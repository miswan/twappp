import '../bloc/for_you_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<ForYouController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 251.v,
      width: 152.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img43,
            height: 251.v,
            width: 152.h,
            radius: BorderRadius.circular(
              15.h,
            ),
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.all(16.h),
              decoration: AppDecoration
                  .gradientOnPrimaryContainerToOnPrimaryContainer
                  .copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse9,
                    height: 30.adaptSize,
                    width: 30.adaptSize,
                    radius: BorderRadius.circular(
                      15.h,
                    ),
                    margin: EdgeInsets.only(top: 189.v),
                  ),
                  Opacity(
                    opacity: 0.7,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 196.v,
                        bottom: 7.v,
                      ),
                      child: Obx(
                        () => Text(
                          userprofileItemModelObj.username!.value,
                          style: CustomTextStyles.labelLargePrimarySemiBold,
                        ),
                      ),
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
