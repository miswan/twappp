import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/notifications_model.dart';
import '../models/notificationslist_item_model.dart';
import '../../../core/app_export.dart';

part 'notifications_event.dart';
part 'notifications_state.dart';

class NotificationsBloc extends Bloc<NotificationsEvent, NotificationsState> {
  NotificationsBloc() : super(NotificationsState()) {
    on<NotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<NotificationsState> emit,
  ) async {
    emit(
      state.copyWith(
        notificationsModelObj: NotificationsModel(
          notificationslistItemList: fillNotificationslistItemList(),
        ),
      ),
    );
  }

  List<NotificationslistItemModel> fillNotificationslistItemList() {
    return [
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse22,
          kevinhas: "Kevin has followed you",
          duration: "1 hour ago"),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse221,
          kevinhas: "Emma has liked your post",
          duration: "2 hours ago"),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse22,
          kevinhas: "John commented on your photo",
          duration: "3 hours ago"),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse221,
          kevinhas: "Sarah shared your post",
          duration: "4 hours ago"),
      NotificationslistItemModel(
          image: ImageConstant.imgEllipse22,
          kevinhas: "Mike started following you",
          duration: "5 hours ago")
    ];
  }
}
