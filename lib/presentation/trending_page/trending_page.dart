import '../trending_page/widgets/momentcard_item_widget.dart';
import 'controller/trending_controller.dart';
import 'models/momentcard_item_model.dart';
import 'models/trending_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';

class TrendingPage extends StatelessWidget {
  final TrendingController controller =
      Get.put(TrendingController(TrendingModel().obs));

  TrendingPage({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 27.v),
              _buildMomentCard(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildMomentCard() {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Obx(
          () => ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 24.v,
              );
            },
            itemCount: controller
                .trendingModelObj.value.momentcardItemList.value.length,
            itemBuilder: (context, index) {
              MomentcardItemModel model = controller
                  .trendingModelObj.value.momentcardItemList.value[index];
              return MomentcardItemWidget(
                model,
              );
            },
          ),
        ),
      ),
    );
  }
}
