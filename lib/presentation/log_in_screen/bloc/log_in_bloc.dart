import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/log_in_model.dart';

part 'log_in_event.dart';

part 'log_in_state.dart';

/// A bloc that manages the state of a LogIn according to the event that is dispatched to it.

class LogInBloc extends Bloc<LogInEvent, LogInState> {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  LogInBloc(LogInState initialState) : super(initialState) {
    on<LogInInitialEvent>(_onInitial);
    on<ChangePasswordVisibilityEvent>(_changePasswordVisibility);
    on<SubmitLoginEvent>(_onSubmitLogin);
    on<SendOtpEvent>(_onSendOtp);
  }

  void _onInitial(LogInInitialEvent event, Emitter<LogInState> emit) {
    emit(state.copyWith(
      emailcontroller: TextEditingController(),
      passwordController: TextEditingController(),
      phoneController: TextEditingController(),
      isShowPassword: true,
      isLoading: false,
    ));
  }

  _changePasswordVisibility(
    ChangePasswordVisibilityEvent event,
    Emitter<LogInState> emit,
  ) {
    emit(state.copywith(
      isShowPassword: event.value,
    ));
  }

  _onSubmitLogin(
    SubmitLoginEvent event,
    Emitter<LogInState> emit,
  ) async {
    emit(state.copywith(isLoading: true, error: null));

    try {
      // Add your authentication logic here
      // For example:
      // await authService.login(event.email, event.password);

      emit(state.copywith(isLoading: false));
      // Navigate to home screen or next screen
    } catch (e) {
      emit(state.copywith(
        isLoading: false,
        error: e.toString(),
      ));
    }
  }

  Future<void> _onSendOtp(SendOtpEvent event, Emitter<LogInState> emit) async {
    emit(state.copyWith(isLoading: true));

    try {
      await _auth.verifyPhoneNumber(
        phoneNumber: '+1${state.phoneController?.text}',
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(state.copyWith(
            isLoading: false,
            errorMessage: e.message,
          ));
        },
        codeSent: (String verificationId, int? resendToken) {
          emit(state.copyWith(
            isLoading: false,
            verificationId: verificationId,
          ));
        },
        codeAutoRetrievalTimeout: (String verificationId) {},
      );
    } catch (e) {
      emit(state.copyWith(
        isLoading: false,
        errorMessage: e.toString(),
      ));
    }
  }
}
