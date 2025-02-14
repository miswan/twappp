import '../controller/comments_controller.dart';
import '../models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile3ItemWidget extends StatelessWidget {
  Userprofile3ItemWidget(
    this.userprofile3ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile3ItemModel userprofile3ItemModelObj;

  var controller = Get.find<CommentsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Obx(
              () => CustomImageView(
                imagePath: userprofile3ItemModelObj.userImage!.value,
                height: 50.adaptSize,
                width: 50.adaptSize,
                radius: BorderRadius.circular(
                  25.h,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 8.v,
                bottom: 4.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofile3ItemModelObj.userName!.value,
                      style: CustomTextStyles.titleMediumOnPrimary,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      userprofile3ItemModelObj.timeAgo!.value,
                      style: CustomTextStyles.labelMediumGray50001,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 23.v),
        SizedBox(
          width: 382.h,
          child: Obx(
            () => Text(
              userprofile3ItemModelObj.description!.value,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeOnPrimary,
            ),
          ),
        ),
        SizedBox(height: 21.v),
        Obx(
          () => Text(
            userprofile3ItemModelObj.replyText!.value,
            style: CustomTextStyles.titleMediumDeeppurpleA200SemiBold_1,
          ),
        ),
      ],
    );
  }
}
