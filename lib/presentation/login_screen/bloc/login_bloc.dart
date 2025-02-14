
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
      await _auth.verifyPhoneNumber(
        phoneNumber: event.phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential);
        },
        verificationFailed: (FirebaseAuthException e) {
          emit(state.copyWith(error: e.message));
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
      final credential = PhoneAuthProvider.credential(
        verificationId: _verificationId!,
        smsCode: event.otp,
      );
      await _auth.signInWithCredential(credential);
      emit(state.copyWith(isAuthenticated: true));
    } catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }
}
