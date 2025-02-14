
part of 'login_bloc.dart';

class LoginState {
  final TextEditingController phoneController;
  final TextEditingController otpController;
  final bool showOtpField;
  final bool isAuthenticated;
  final String? error;

  LoginState({
    TextEditingController? phoneController,
    TextEditingController? otpController,
    this.showOtpField = false,
    this.isAuthenticated = false,
    this.error,
  })  : phoneController = phoneController ?? TextEditingController(),
        otpController = otpController ?? TextEditingController();

  LoginState copyWith({
    bool? showOtpField,
    bool? isAuthenticated,
    String? error,
  }) {
    return LoginState(
      phoneController: phoneController,
      otpController: otpController,
      showOtpField: showOtpField ?? this.showOtpField,
      isAuthenticated: isAuthenticated ?? this.isAuthenticated,
      error: error,
    );
  }
}
