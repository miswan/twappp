import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/turn_on_notifications_model.dart';

part 'turn_on_notifications_event.dart';

part 'turn_on_notifications_state.dart';

/// A bloc that manages the state of a TurnOnNotifications according to the event that is dispatched to it.

class TurnOnNotificationsBloc
    extends Bloc<TurnOnNotificationsEvent, TurnOnNotificationsState> {
  TurnOnNotificationsBloc(TurnOnNotificationsstate initialstate)
      : super(initialstate) {
    on<TurnOnNotificationsInitialEvent>(_onInitialize);

    on<ChangeSwitchEvent>(_changeSwitch);
  }

  _onInitialize(
    TurnOnNotificationsInitialEvent event,
    Emitter<TurnOnNotificationsstate> emit,
  ) async {
    emit(
      state.copywith(
        isselectedSwitch: false,
      ),
    );
  }

  _changeSwitch(
    ChangeSwitchEvent event,
    Emitter<TurnOnNotificationsstate> emit,
  ) {
    emit(state.copywith(
      isselectedSwitch: event.value,
    ));
  }
}
