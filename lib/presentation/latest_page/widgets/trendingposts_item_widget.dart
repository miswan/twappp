import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/trendingposts_item_model.dart';

class TrendingpostsItemWidget extends StatelessWidget {
  final TrendingpostsItemModel model;

  const TrendingpostsItemWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        color: appTheme.deepPurpleA200,
        borderRadius: BorderRadiusStyle.roundedBorder14,
        boxShadow: [
          BoxShadow(
            color: appTheme.black90001.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(2, 1),
          )
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 220.h,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.img40,
                  height: 218.h,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(14.h),
                ),
                _buildContentSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildContentSection() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          padding: EdgeInsets.all(22.h),
          decoration: BoxDecoration(
            borderRadius: BorderRadiusStyle.roundedBorder14,
            gradient: LinearGradient(
              begin: const Alignment(0.5, 0),
              end: const Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimaryContainer,
                appTheme.blueGray900
              ],
            ),
          ),
          child: _buildUserInfo(),
        ),
        SizedBox(height: 22.h),
        _buildPostContent(),
        SizedBox(height: 22.h),
        _buildHashtags(),
        SizedBox(height: 50.h),
      ],
    );
  }

  Widget _buildUserInfo() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgEllipse7,
          height: 50.h,
          width: 50.h,
          radius: BorderRadius.circular(24.h),
          margin: EdgeInsets.only(top: 124.h),
        ),
        SizedBox(width: 16.h),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                model.rickonad,
                style: CustomTextStyles.titleLargePrimary,
              ),
              SizedBox(height: 6.h),
              Text(
                model.time,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _buildPostContent() {
    return SizedBox(
      width: 334.h,
      child: Text(
        model.thisisthe,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: theme.textTheme.bodyLarge?.copyWith(height: 1.50),
      ),
    );
  }

  Widget _buildHashtags() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Row(
        children: [
          Text(
            model.huge,
            style: theme.textTheme.bodyMedium,
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              model.fotography,
              style: theme.textTheme.bodyMedium,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 30.h),
            child: Text(
              model.nature,
              style: theme.textTheme.bodyMedium,
            ),
          ),
        ],
      ),
    );
  }
}
