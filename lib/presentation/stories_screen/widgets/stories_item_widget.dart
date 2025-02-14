import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

import '../models/stories_item_model.dart';

// ignore_for_file: must_be_immutable

class StoriesItemwidget extends StatelessWidget {
  StoriesItemwidget(this.storiesItemModelobj, {Key? key})
      : super(
          key: key,
        );

  StoriesItemModel storiesItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 64.h,
      child: Column(
        children: [
          Container(
            height: 64.h,
            width: double.maxFinite,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusStyle.circleBorder32,
              border: Border.all(
                color: appTheme.deepPurpleA200,
                width: 2.h,
              ),
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: storiesItemModelobj.royone!,
                  height: 54.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    26.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            storiesItemModelObj.royTwo!,
            overflow: Textoverflow.ellipsis,
            style: theme.textTheme.labelLarge,
          )
        ],
      ),
    );
  }
}
