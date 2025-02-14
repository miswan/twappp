import '../../../core/app_export.dart';
import 'package:flutter/material.dart';
import '../models/profilessection_item_model.dart';

class ProfilessectionItemWidget extends StatelessWidget {
  final ProfilessectionItemModel profilessectionItemModelObj;

  const ProfilessectionItemWidget(this.profilessectionItemModelObj, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 178.h,
      width: 146.h,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: profilessectionItemModelObj.nineteenOne,
            height: 178.h,
            width: double.maxFinite,
            radius: BorderRadius.circular(14.h),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 8.h,
                vertical: 10.h,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder14,
                gradient: LinearGradient(
                  begin: const Alignment(0.5, 0),
                  end: const Alignment(0.5, 1),
                  colors: [
                    Colors.transparent,
                    Theme.of(context).colorScheme.onPrimaryContainer,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  if (profilessectionItemModelObj.agnessMonica != null)
                    CustomImageView(
                      imagePath: profilessectionItemModelObj.agnessMonica,
                      height: 34.h,
                      width: 34.h,
                      margin: EdgeInsets.only(top: 52.h),
                    ),
                  SizedBox(width: 12.h),
                  if (profilessectionItemModelObj.agnessMonica1 != null)
                    Padding(
                      padding: EdgeInsets.only(bottom: 8.h),
                      child: Text(
                        profilessectionItemModelObj.agnessMonica1!,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.labelMediumPrimary,
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
