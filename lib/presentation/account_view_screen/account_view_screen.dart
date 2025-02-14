import 'package:flutter/material.dart';

import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/account_view_bloc.dart';
import 'models/accountcounts_item_model.dart';
import 'widgets/accountcounts_item_widget.dart';

class AccountViewScreen extends StatelessWidget {
  const AccountViewScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AccountViewBloc>(
      create: (context) => AccountViewBloc(AccountViewState(
        accountViewModelObj: AccountViewModel(),
      ))
        ..add(AccountViewInitialEvent()),
      child: AccountViewScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 852.h,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 644.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle3809,
                              height: 644.h,
                              width: double.maxFinite,
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: _buildAppBar(context),
                            ),
                            Container(
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.5, 0),
                                  end: Alignment(0.5, 1),
                                  colors: [
                                    theme.colorscheme.onPrimaryContainer,
                                    appTheme.blueGray900,
                                  ],
                                ),
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Spacer(),
                                  _buildAccountDetails(context),
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
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Container(
        margin: EdgeInsets.only(top: 12.h),
        child: CustomAppBar(
          height: 24.h,
          leadingWidth: 24.h,
          leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
            margin: EdgeInsets.only(left: 16.h),
          ),
          actions: [
            AppbarTrailingImage(
              imagePath: ImageConstant.imgSettingsDeepPurpleA2001,
              margin: EdgeInsets.only(right: 16.h),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountDetails(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        borderRadius: BorderRadiusStyle.customBorderTL30,
        color: appTheme.deepPurpleA200,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: GestureDetector(
              onTap: () {
                onTapColumnfollow(context);
              },
              child: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 32.h),
                decoration: BoxDecoration(
                  color: appTheme.deepPurpleA200,
                  borderRadius: BorderRadiusStyle.customBorderTL30,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse11,
                            height: 50.h,
                            width: 50.h,
                            radius: BorderRadius.circular(24.h),
                          ),
                          SizedBox(width: 24.h),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_rosalia".tr,
                                  style: CustomTextStyles.titleLargePrimary,
                                ),
                                SizedBox(height: 6.h),
                                Text(
                                  "lbl_rose23".tr,
                                  style: theme.textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 24.h),
                          CustomOutlinedButton(
                            width: 76.h,
                            text: "lbl_follow".tr,
                            buttonStyle: CustomButtonStyles.outlinePrimaryTL16,
                            buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 28.h),
                    Container(
                      margin: EdgeInsets.only(left: 10.h, right: 6.h),
                      width: double.maxFinite,
                      child: BlocSelector<AccountViewBloc, AccountViewState,
                          AccountViewModel?>(
                        selector: (state) => state.accountViewModelObj,
                        builder: (context, accountViewModelObj) {
                          return SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Wrap(
                              direction: Axis.horizontal,
                              spacing: 70.h,
                              children: List.generate(
                                accountViewModelObj
                                        ?.accountcountsItemList.length ??
                                    0,
                                (index) {
                                  AccountcountsItemModel model =
                                      accountViewModelObj
                                              ?.accountcountsItemList[index] ??
                                          AccountcountsItemModel();
                                  return AccountcountsItemWidget(model);
                                },
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    SizedBox(height: 28.h),
                    Container(
                      width: double.maxFinite,
                      margin: EdgeInsets.symmetric(horizontal: 34.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomIconButton(
                            height: 50.h,
                            width: 50.h,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPersonAddAlt1,
                            ),
                          ),
                          CustomIconButton(
                            height: 50.h,
                            width: 50.h,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgGroup9036,
                            ),
                          ),
                          CustomIconButton(
                            height: 50.h,
                            width: 50.h,
                            padding: EdgeInsets.all(12.h),
                            decoration: IconButtonStyleHelper.fillPrimary,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgCall,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 24.h),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void onTapColumnfollow(BuildContext context) {
    NavigatorService.pushNamed(AppRoutes.accountDetailsScreen);
  }
}
