import '../controller/stories_controller.dart';
import '../models/livelist1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

// ignore: must_be_immutable
class Livelist1ItemWidget extends StatelessWidget {
  Livelist1ItemWidget(
    this.livelist1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Livelist1ItemModel livelist1ItemModelObj;

  var controller = Get.find<StoriesController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Align(
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              height: 64.adaptSize,
              width: 64.adaptSize,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  32.h,
                ),
                border: Border.all(
                  color: appTheme.deepPurpleA200,
                  width: 2.h,
                ),
              ),
            ),
            SizedBox(height: 9.v),
            Obx(
              () => Text(
                livelist1ItemModelObj.textValue!.value,
                style: theme.textTheme.labelLarge,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
