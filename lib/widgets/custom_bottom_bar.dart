import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_text_style.dart';
import '../theme/theme_helper.dart';
import '../utils/size_utils.dart';

enum BottomBarEnum { Home, Streaming, Messages, Notifications, Profile }

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({Key? key, this.onChanged}) : super(key: key);

  final Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavHome,
      activeIcon: ImageConstant.imgNavHome,
      title: "lbl_home".tr,
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavStreaming,
      activeIcon: ImageConstant.imgNavStreaming,
      title: "lbl_streaming".tr,
      type: BottomBarEnum.Streaming,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavMessages,
      activeIcon: ImageConstant.imgNavMessages,
      title: "lbl_messages".tr,
      type: BottomBarEnum.Messages,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavNotifications,
      activeIcon: ImageConstant.imgNavNotifications,
      title: "lbl_notifications".tr,
      type: BottomBarEnum.Notifications,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavProfileBlueGray400,
      activeIcon: ImageConstant.imgNavProfileBlueGray400,
      title: "lbl_profile".tr,
      type: BottomBarEnum.Profile,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(16.h),
        ),
        boxShadow: [
          BoxShadow(
            color: Color(0X338165EA),
            spreadRadius: 2.h,
            blurRadius: 4.h,
            offset: Offset(0, -2),
          ),
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedFontSize: 12.sp,
        unselectedFontSize: 12.sp,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(vertical: 4.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CustomImageView(
                    imagePath: bottomMenuList[index].icon,
                    height: 24.h,
                    width: 24.h,
                    color: selectedIndex == index
                        ? theme.colorScheme.primary
                        : Color(0XFF8D8B95),
                  ),
                  SizedBox(height: 4.h),
                  Text(
                    bottomMenuList[index].title ?? "",
                    style: selectedIndex == index
                        ? CustomTextStyles.labelMediumPrimary
                        : theme.textTheme.labelMedium?.copyWith(
                            color: Color(0XFF8D8B95),
                          ),
                  ),
                ],
              ),
            ),
            label: '',
          );
        }),
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
          widget.onChanged?.call(bottomMenuList[index].type);
        },
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  final String icon;
  final String activeIcon;
  final String? title;
  final BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0XFFFFFFFF),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
