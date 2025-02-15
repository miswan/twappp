import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/momentcard_item_model.dart';
import 'package:miswan_s_application3/core/app_export.dart';

class MomentcardItemWidget extends StatelessWidget {
  final MomentcardItemModel momentcardItemModel;

  const MomentcardItemWidget(
    this.momentcardItemModel, {
    Key? key,
  }) : super(key: key);

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
                CustomImageView(
                  imagePath: momentcardItemModel.image,
                  height: 221.v,
                  width: 382.h,
                  radius: BorderRadius.circular(15.h),
                  alignment: Alignment.center,
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
                              Text(
                                momentcardItemModel.username,
                                style: CustomTextStyles.titleLargePrimary_1,
                              ),
                              SizedBox(height: 5.v),
                              Text(
                                momentcardItemModel.timeAgo,
                                style: theme.textTheme.bodyMedium,
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
            child: Text(
              momentcardItemModel.description,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargePrimary,
            ),
          ),
          SizedBox(height: 27.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 1.v),
                  child: Text(
                    momentcardItemModel.tag1,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 30.h,
                    top: 1.v,
                  ),
                  child: Text(
                    momentcardItemModel.tag2,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    momentcardItemModel.tag3,
                    style: theme.textTheme.bodyMedium,
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
