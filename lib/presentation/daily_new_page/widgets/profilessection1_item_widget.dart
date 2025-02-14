import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../models/profilessection1_item_model.dart';

class Profilessection1ItemWidget extends StatelessWidget {
  final Profilessection1ItemModel profilessection1ItemModelObj;

  const Profilessection1ItemWidget(this.profilessection1ItemModelObj,
      {Key? key})
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
            imagePath: profilessection1ItemModelObj.nineteenOne,
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
                    theme.colorScheme.onPrimaryContainer,
                    appTheme.blueGray900,
                  ],
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: profilessection1ItemModelObj.agnessMonica,
                    height: 34.h,
                    width: 34.h,
                    margin: EdgeInsets.only(top: 52.h),
                  ),
                  SizedBox(width: 12.h),
                  Padding(
                    padding: EdgeInsets.only(bottom: 8.h),
                    child: Text(
                      profilessection1ItemModelObj.agnessMonica1 ?? "",
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
