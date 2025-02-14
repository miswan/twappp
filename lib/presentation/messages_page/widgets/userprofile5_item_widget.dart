import '../controller/messages_controller.dart';
import '../models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile5ItemWidget extends StatelessWidget {
  Userprofile5ItemWidget(
    this.userprofile5ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile5ItemModel userprofile5ItemModelObj;

  var controller = Get.find<MessagesController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 26.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 54.v,
            width: 52.h,
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                Obx(
                  () => CustomImageView(
                    imagePath: userprofile5ItemModelObj.userImage!.value,
                    height: 54.v,
                    width: 52.h,
                    radius: BorderRadius.circular(
                      27.h,
                    ),
                    alignment: Alignment.center,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    decoration: BoxDecoration(
                      color: appTheme.greenA700,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                      border: Border.all(
                        color: theme.colorScheme.primary,
                        width: 2.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 2.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    userprofile5ItemModelObj.userName!.value,
                    style: theme.textTheme.titleMedium,
                  ),
                ),
                SizedBox(height: 8.v),
                Obx(
                  () => Text(
                    userprofile5ItemModelObj.userMessage!.value,
                    style: theme.textTheme.bodyLarge,
                  ),
                ),
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 3.v,
              bottom: 30.v,
            ),
            child: Obx(
              () => Text(
                userprofile5ItemModelObj.time!.value,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
