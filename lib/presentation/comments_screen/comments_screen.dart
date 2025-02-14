import '../comments_screen/widgets/userprofile3_item_widget.dart';
import 'controller/comments_controller.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:miswan_s_application3/widgets/custom_icon_button.dart';
import 'package:miswan_s_application3/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends GetWidget<CommentsController> {
  const CommentsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 21.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 16.h),
                child: Text(
                  "lbl_comments".tr,
                  style: theme.textTheme.headlineLarge,
                ),
              ),
              SizedBox(height: 21.v),
              _buildUserProfile(),
            ],
          ),
        ),
        bottomNavigationBar: _buildComment(),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(19.h, 16.v, 377.h, 16.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile() {
    return Obx(
      () => ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (
          context,
          index,
        ) {
          return Padding(
            padding: EdgeInsets.symmetric(vertical: 7.0.v),
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(
                height: 2.v,
                thickness: 2.v,
                color: appTheme.deepPurple50,
              ),
            ),
          );
        },
        itemCount:
            controller.commentsModelObj.value.userprofile3ItemList.value.length,
        itemBuilder: (context, index) {
          Userprofile3ItemModel model = controller
              .commentsModelObj.value.userprofile3ItemList.value[index];
          return Userprofile3ItemWidget(
            model,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildComment() {
    return Padding(
      padding: EdgeInsets.only(
        left: 16.h,
        right: 16.h,
        bottom: 39.v,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.commentController,
              hintText: "lbl_write_a_comment".tr,
              textInputAction: TextInputAction.done,
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray10001,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: CustomIconButton(
              height: 50.adaptSize,
              width: 50.adaptSize,
              padding: EdgeInsets.all(13.h),
              decoration: IconButtonStyleHelper.fillDeepPurpleATL25,
              child: CustomImageView(
                imagePath: ImageConstant.imgGroup9143,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
