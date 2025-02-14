import '../controller/trending_tab_container_controller.dart';
import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  var controller = Get.find<TrendingTabContainerController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          Container(
            height: 64.adaptSize,
            width: 64.adaptSize,
            padding: EdgeInsets.symmetric(
              horizontal: 4.h,
              vertical: 3.v,
            ),
            decoration: AppDecoration.outlineDeepPurpleA.copyWith(
              borderRadius: BorderRadiusStyle.circleBorder32,
            ),
            child: Obx(
              () => CustomImageView(
                imagePath: userprofile1ItemModelObj.userImage!.value,
                height: 54.v,
                width: 52.h,
                radius: BorderRadius.circular(
                  27.h,
                ),
                alignment: Alignment.center,
              ),
            ),
          ),
          SizedBox(height: 9.v),
          Obx(
            () => Text(
              userprofile1ItemModelObj.userName!.value,
              style: theme.textTheme.labelLarge,
            ),
          ),
        ],
      ),
    );
  }
}
