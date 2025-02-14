part of 'log_in_state.dart';

/// Represents the state of LogIn in the application.

// ignore_for_file: must_be_immutable

class LogInState extends Equatable {
  LogInState(
      {this.emailcontroller,
      this.passwordController,
      this.isShowPassword = true,
      this.logInModelobj});

  TextEditingController? emailcontroller;

  TextEditingController? passwordController;

  LogInModel? logInModelObj;

  bool isShowPassword;

  @override
  List<Object?> get props =>
      [emailcontroller, passwordController, isShowPassword, logInModelobj];

  LogInState copywith({
    TextEditingController? emailcontroller,
    TextEditingController? passwordController,
    bool? isShowPassword,
    LogInModel? logInModelobj,
  }) {
    return LogInState(
      emailcontroller: emailcontroller ?? this.emailcontroller,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      logInModelobj: logInModelobj ?? this.logInModelObj,
    );
  }
}
