import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'bloc/stories_and_tweets_bloc.dart';
import 'models/listsave_one_item_model.dart';
import 'models/postlist_item_model.dart';
import 'models/stories_and_tweets_model.dart';
import 'widgets/listsave_one_item_widget.dart';
import 'widgets/postlist_item_widget.dart';

class StoriesAndTweetsScreen extends StatelessWidget {
  const StoriesAndTweetsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StoriesAndTweetsBloc>(
      create: (context) => StoriesAndTweetsBloc(StoriesAndTweetsState(
        storiesAndTweetsModelObj: StoriesAndTweetsModel(),
      ))
        ..add(StoriesAndTweetsInitialEvent()),
      child: StoriesAndTweetsScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 28.h),
              child: Column(
                children: [
                  _buildStoriesSection(context),
                  SizedBox(height: 20.h),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                  SizedBox(height: 20.h),
                  _buildFollowSection(context),
                  SizedBox(height: 20.h),
                  _buildPostList(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      title: BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
          TextEditingController?>(
        selector: (state) => state.searchController,
        builder: (context, searchController) {
          return AppbarTitleSearchview(
            margin: EdgeInsets.only(left: 16.h),
            hintText: "lbl_search".tr,
            controller: searchController,
          );
        },
      ),
      actions: [
        AppbarTrailingIconbutton(
          imagePath: ImageConstant.imgGroup9086,
          margin: EdgeInsets.only(
            top: 5.h,
            right: 19.h,
            bottom: 7.h,
          ),
        ),
      ],
    );
  }

  Widget _buildStoriesSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_stories".tr,
                  style: theme.textTheme.headlineSmall,
                ),
                SizedBox(height: 18.h),
                BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
                    StoriesAndTweetsModel?>(
                  selector: (state) => state.storiesAndTweetsModelObj,
                  builder: (context, storiesAndTweetsModelObj) {
                    return SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Wrap(
                        direction: Axis.horizontal,
                        spacing: 16.h,
                        children: List.generate(
                          storiesAndTweetsModelObj
                                  ?.listsaveOneItemList.length ??
                              0,
                          (index) {
                            ListsaveOneItemModel model =
                                storiesAndTweetsModelObj
                                        ?.listsaveOneItemList[index] ??
                                    ListsaveOneItemModel();
                            return ListsaveOneItemWidget(model: model);
                          },
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildFollowSection(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipse12,
                            height: 50.h,
                            width: 50.h,
                            radius: BorderRadius.circular(24.h),
                          ),
                          SizedBox(width: 16.h),
                          Expanded(
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_albert_o_connor".tr,
                                    style: theme.textTheme.titleLarge,
                                  ),
                                  SizedBox(height: 6.h),
                                  Text(
                                    "lbl_4_hours_ago".tr,
                                    style:
                                        CustomTextStyles.bodyMediumBluegray400,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          CustomOutlinedButton(
                            width: 76.h,
                            text: "lbl_follow".tr,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: 348.h,
                  child: Text(
                    "msg_introduce_i_am_a".tr,
                    maxLines: 3,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.bodyLargeBluegray400_1.copyWith(
                      height: 1.50,
                    ),
                  ),
                ),
                SizedBox(height: 16.h),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 18.h),
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.img22,
                        height: 114.h,
                        width: 84.h,
                        radius: BorderRadius.circular(5.h),
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.img25,
                        height: 114.h,
                        width: 84.h,
                        radius: BorderRadius.circular(5.h),
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.img411,
                        height: 114.h,
                        width: 84.h,
                        radius: BorderRadius.circular(5.h),
                      ),
                      SizedBox(width: 8.h),
                      CustomImageView(
                        imagePath: ImageConstant.img16,
                        height: 114.h,
                        width: 84.h,
                        radius: BorderRadius.circular(5.h),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 16.h),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgFavoriteDeepPurpleA2001,
                        height: 16.h,
                        width: 18.h,
                        margin: EdgeInsets.only(bottom: 2.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                        child: Text(
                          "lbl_2200".tr,
                          style: CustomTextStyles.bodySmallDeeppurpleA200,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgUserDeepPurpleA2001,
                        height: 18.h,
                        width: 18.h,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 28.h),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 8.h, bottom: 2.h),
                        child: Text(
                          "lbl_800".tr,
                          style: CustomTextStyles.bodySmallDeeppurpleA200,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsDeepPurpleA2002,
                        height: 24.h,
                        width: 54.h,
                        alignment: Alignment.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPostList(BuildContext context) {
    return BlocSelector<StoriesAndTweetsBloc, StoriesAndTweetsState,
        StoriesAndTweetsModel?>(
      selector: (state) => state.storiesAndTweetsModelObj,
      builder: (context, storiesAndTweetsModelObj) {
        return ListView.builder(
          padding: EdgeInsets.zero,
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: storiesAndTweetsModelObj?.postlistItemList.length ?? 0,
          itemBuilder: (context, index) {
            PostlistItemModel model =
                storiesAndTweetsModelObj?.postlistItemList[index] ??
                    PostlistItemModel();
            return PostlistItemWidget(model: model);
          },
        );
      },
    );
  }
}
