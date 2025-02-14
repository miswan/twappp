
part of 'login_bloc.dart';

abstract class LoginEvent {}

class SendOtpEvent extends LoginEvent {
  final String phoneNumber;
  SendOtpEvent(this.phoneNumber);
}

class VerifyOtpEvent extends LoginEvent {
  final String otp;
  VerifyOtpEvent(this.otp);
}
