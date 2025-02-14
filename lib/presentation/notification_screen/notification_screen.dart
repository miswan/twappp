import 'controller/notification_controller.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class NotificationScreen extends GetWidget<NotificationController> {
  const NotificationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.deepPurpleA200,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 16.h,
            top: 168.v,
            right: 16.h,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgNotificationBell,
                height: 161.v,
                width: 146.h,
              ),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_turn_on_notifications".tr,
                  style: CustomTextStyles.headlineLargePrimary,
                ),
              ),
              SizedBox(height: 8.v),
              SizedBox(
                width: 380.h,
                child: Text(
                  "msg_turn_on_notifications2".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargePrimary,
                ),
              ),
              SizedBox(height: 45.v),
              _buildNotificationRow(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          "lbl_notifications".tr,
          style: CustomTextStyles.titleMediumPrimary,
        ),
        Obx(
          () => CustomSwitch(
            value: controller.isSelectedSwitch.value,
            onChange: (value) {
              controller.isSelectedSwitch.value = value;
            },
          ),
        ),
      ],
    );
  }
}
