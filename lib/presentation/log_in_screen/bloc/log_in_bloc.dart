import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/log_in_model.dart';

part 'log_in_event.dart';

part 'log_in_state.dart';

/// A bloc that manages the state of a LogIn according to the event that is dispatched to it.

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  LogInBloc(LogInState initialstate) : super(initialstate) {
    on<LogInInitialEvent>(_onInitialize);

    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
  }

  _onInitialize(
    LogInInitialEvent event,
    Emitter<LogInState> emit,
  ) async {
    emit(
      state.copywith(
        emailcontroller: TextEditingController(),
        passwordController: TextEditingController(),
        isShowPassword: true,
      ),
    );
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LogInState> emit,
  ) {
    emit(state.copywith(
      isShowPassword: event.value,
    ));
  }
}
