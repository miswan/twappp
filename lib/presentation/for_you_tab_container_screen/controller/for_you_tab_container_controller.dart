import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/presentation/for_you_tab_container_screen/models/for_you_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ForYouTabContainerScreen.
///
/// This class manages the state of the ForYouTabContainerScreen, including the
/// current forYouTabContainerModelObj
class ForYouTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  Rx<ForYouTabContainerModel> forYouTabContainerModelObj =
      ForYouTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 3));
}
