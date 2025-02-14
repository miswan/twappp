import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/presentation/trending_tab_container_screen/models/trending_tab_container_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TrendingTabContainerScreen.
///
/// This class manages the state of the TrendingTabContainerScreen, including the
/// current trendingTabContainerModelObj
class TrendingTabContainerController extends GetxController
    with GetSingleTickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  Rx<TrendingTabContainerModel> trendingTabContainerModelObj =
      TrendingTabContainerModel().obs;

  late TabController tabviewController =
      Get.put(TabController(vsync: this, length: 4));

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
