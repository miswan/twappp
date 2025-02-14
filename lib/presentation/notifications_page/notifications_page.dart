import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'bloc/notifications_bloc.dart';
import 'models/notifications_model.dart';
import 'models/notificationslist_item_model.dart';
import 'widgets/notificationslist_item_widget.dart';

class NotificationsPage extends StatelessWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationsBloc>(
      create: (context) => NotificationsBloc(
        NotificationsState(notificationsModelObj: NotificationsModel()),
      )..add(NotificationsInitialEvent()),
      child: const NotificationsPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 18.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              _buildNotificationsHeader(context),
              SizedBox(height: 32.h),
              _buildNotificationsList(context),
              SizedBox(height: 36.h),
            ],
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 24.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowBackDeepPurpleA200,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 13.h,
          bottom: 15.h,
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgPersonAddAlt1,
          margin: EdgeInsets.only(
            top: 13.h,
            right: 16.h,
            bottom: 15.h,
          ),
        ),
      ],
    );
  }

  Widget _buildNotificationsHeader(BuildContext context) {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_notifications".tr,
            style: theme.textTheme.headlineLarge,
          ),
        ],
      ),
    );
  }

  Widget _buildNotificationsList(BuildContext context) {
    return Expanded(
      child: BlocSelector<NotificationsBloc, NotificationsState,
          NotificationsModel?>(
        selector: (state) => state.notificationsModelObj,
        builder: (context, notificationsModelObj) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            physics: const BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 24.h);
            },
            itemCount:
                notificationsModelObj?.notificationslistItemList.length ?? 0,
            itemBuilder: (context, index) {
              NotificationslistItemModel model =
                  notificationsModelObj?.notificationslistItemList[index] ??
                      NotificationslistItemModel();
              return NotificationslistItemWidget(model);
            },
          );
        },
      ),
    );
  }
}
