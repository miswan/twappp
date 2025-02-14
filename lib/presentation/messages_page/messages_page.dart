import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/messages_bloc.dart';
import '../messages_page/widgets/userprofile4_item_widget.dart';
import '../messages_page/widgets/userprofile5_item_widget.dart';
import 'controller/messages_controller.dart';
import 'models/messages_model.dart';
import 'models/userprofile4_item_model.dart';
import 'models/userprofile5_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_trailing_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';

class MessagesPage extends StatelessWidget {
  MessagesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MessagesBloc()..add(LoadMessages()),
      child: SafeArea(
        child: Scaffold(
          appBar: _buildAppBar(),
          body: _buildBody(),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowBack,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.v,
          bottom: 13.v,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgAddDeepPurpleA200,
          margin: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 13.v,
          ),
        ),
      ],
    );
  }

  Widget _buildBody() {
    return BlocBuilder<MessagesBloc, MessagesState>(
      builder: (context, state) {
        if (state is MessagesLoading) {
          return Center(child: CircularProgressIndicator());
        }
        if (state is MessagesError) {
          return Center(child: Text(state.message));
        }
        if (state is MessagesLoaded) {
          return Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(vertical: 25.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_messages".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                ),
                SizedBox(height: 17.v),
                _buildUserProfile(state.stories),
                SizedBox(height: 22.v),
                _buildUserProfile1(state.messages),
              ],
            ),
          );
        }
        return SizedBox();
      },
    );
  }

  Widget _buildUserProfile(List<Userprofile4ItemModel> stories) {
    return Align(
      alignment: Alignment.centerRight,
      child: SizedBox(
        height: 82.v,
        child: ListView.separated(
          padding: EdgeInsets.only(left: 16.h),
          scrollDirection: Axis.horizontal,
          separatorBuilder: (context, index) => SizedBox(width: 20.h),
          itemCount: stories.length,
          itemBuilder: (context, index) {
            return Userprofile4ItemWidget(stories[index]);
          },
        ),
      ),
    );
  }

  Widget _buildUserProfile1(List<Userprofile5ItemModel> messages) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.symmetric(vertical: 13.0.v),
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
      itemCount: messages.length,
      itemBuilder: (context, index) {
        return Userprofile5ItemWidget(messages[index]);
      },
    );
  }
}
