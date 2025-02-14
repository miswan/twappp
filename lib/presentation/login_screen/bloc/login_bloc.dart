
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final _auth = FirebaseAuth.instance;
  String? _verificationId;

  LoginBloc() : super(LoginState()) {
    on<SendOtpEvent>(_onSendOtp);
    on<VerifyOtpEvent>(_onVerifyOtp);
  }

  Future<void> _onSendOtp(SendOtpEvent event, Emitter<LoginState> emit) async {
    try {
      emit(state.copyWith(error: null)); // Clear previous errors
      await _auth.verifyPhoneNumber(
        phoneNumber: event.phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          try {
            await _auth.signInWithCredential(credential);
            emit(state.copyWith(isAuthenticated: true, error: null));
          } catch (e) {
            emit(state.copyWith(error: 'Failed to sign in: ${e.toString()}'));
          }
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(state.copyWith(error: e.message ?? 'Verification failed'));
        },
        codeSent: (String verificationId, int? resendToken) {
          _verificationId = verificationId;
          emit(state.copyWith(showOtpField: true));
        },
        codeAutoRetrievalTimeout: (String verificationId) {
          _verificationId = verificationId;
        },
      );
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _onVerifyOtp(VerifyOtpEvent event, Emitter<LoginState> emit) async {
    try {
      emit(state.copyWith(error: null)); // Clear previous errors
      if (_verificationId == null) {
        emit(state.copyWith(error: 'Verification ID not found. Please request OTP again.'));
        return;
      }
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: event.otp,
      );
      await _auth.signInWithCredential(credential);
      emit(state.copyWith(isAuthenticated: true, error: null));
    } catch (e) {
      emit(state.copyWith(error: 'Invalid OTP or verification failed'));
    }
  }
}
