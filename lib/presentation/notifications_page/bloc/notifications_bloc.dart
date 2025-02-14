import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/notifications_model.dart';

import '../models/notificationslist_item_model.dart';

part 'notifications_event.dart';

part 'notifications_state.dart';

/// A bloc that manages the state of a Notifications according to the event that is dispatched to it.

class NotificationsBloc extends Bloc<NotificationsEvent, Notificationsstate> {
  NotificationsBloc(NotificationsState initialstate) : super(initialstate) {
    on<NotificationsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    NotificationsInitialEvent event,
    Emitter<Notificationsstate> emit,
  ) async {
    emit(
      state.copywith(
        notificationsModelobj: state.notificationsModelobj?.copywith(
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
      NotificationslistItemModel(image: ImageConstant.imgEllipse221),
      NotificationslistItemModel(),
      NotificationslistItemModel(),
      NotificationslistItemModel()
    ];
  }
}
