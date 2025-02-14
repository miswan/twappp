import '../comments_screen/widgets/userprofile3_item_widget.dart';
import 'controller/comments_controller.dart';
import 'models/userprofile3_item_model.dart';
import 'package:flutter/material.dart';
import 'package:miswan_s_application3/core/app_export.dart';
import 'package:miswan_s_application3/widgets/app_bar/appbar_leading_image.dart';
import 'package:miswan_s_application3/widgets/app_bar/custom_app_bar.dart';
import 'package:miswan_s_application3/widgets/custom_icon_button.dart';
import 'package:miswan_s_application3/widgets/custom_text_form_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bloc/comments_bloc.dart';

// ignore_for_file: must_be_immutable
class CommentsScreen extends StatelessWidget {
  final TextEditingController commentController = TextEditingController();

  CommentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CommentsBloc()..add(LoadComments()),
      child: _CommentsScreenContent(commentController: commentController),
    );
  }
}

class _CommentsScreenContent extends StatelessWidget {
  final TextEditingController commentController;

  const _CommentsScreenContent({required this.commentController});

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
        bottomNavigationBar: _buildComment(context),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(19.h, 16.v, 377.h, 16.v),
      ),
    );
  }

  Widget _buildUserProfile() {
    return BlocBuilder<CommentsBloc, CommentsState>(
      builder: (context, state) {
        if (state is CommentsLoading) {
          return Center(child: CircularProgressIndicator());
        } else if (state is CommentsLoaded) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
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
            itemCount: state.comments.length,
            itemBuilder: (context, index) {
              return Userprofile3ItemWidget(state.comments[index]);
            },
          );
        } else if (state is CommentsError) {
          return Center(child: Text(state.message));
        }
        return Container();
      },
    );
  }

  Widget _buildComment(BuildContext context) {
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
              controller: commentController,
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
              onTap: () {
                if (commentController.text.isNotEmpty) {
                  context.read<CommentsBloc>().add(
                        AddComment(commentController.text),
                      );
                  commentController.clear();
                }
              },
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
