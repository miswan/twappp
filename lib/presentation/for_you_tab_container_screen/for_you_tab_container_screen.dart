import 'controller/for_you_tab_container_controller.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/presentation/for_you_screen/for_you_screen.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_subtitle.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ForYouTabContainerScreen extends GetWidget<ForYouTabContainerController> {
  const ForYouTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          height: 1.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  height: 185.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup218,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      height: 185.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment(-0.5, 0),
                          end: Alignment(-0.5, 1),
                          colors: [
                            appTheme.black900.withOpacity(0.5),
                            appTheme.gray40000,
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 26.v,
                      width: 359.h,
                      margin: EdgeInsets.only(left: 16.h),
                      child: TabBar(
                        controller: controller.tabviewController,
                        labelPadding: EdgeInsets.zero,
                        labelColor: theme.colorScheme.primary,
                        unselectedLabelColor:
                            theme.colorScheme.primary.withOpacity(0.6),
                        tabs: [
                          Tab(
                            child: Text(
                              "lbl_for_you".tr,
                            ),
                          ),
                          Tab(
                            child: Opacity(
                              opacity: 0.7,
                              child: Text(
                                "lbl_following".tr,
                              ),
                            ),
                          ),
                          Tab(
                            child: Opacity(
                              opacity: 0.7,
                              child: Text(
                                "lbl_trending".tr,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 337.v,
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [
                          ForYouPage(),
                          ForYouPage(),
                          ForYouPage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 852.v,
      title: Padding(
        padding: EdgeInsets.only(
          left: 90.h,
          top: 2.v,
          bottom: 803.v,
        ),
        child: Column(
          children: [
            AppbarSubtitle(
              text: "lbl_lucas_anna".tr,
            ),
            SizedBox(height: 4.v),
            AppbarSubtitleThree(
              text: "lbl_35_16".tr,
              margin: EdgeInsets.only(right: 76.h),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgClose,
          margin: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 815.v),
        ),
      ],
      styleType: Style.bgGradientnamegray40000nameblack900opacity068,
    );
  }
}
