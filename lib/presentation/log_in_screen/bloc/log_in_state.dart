part of 'log_in_bloc.dart';

class LogInState extends Equatable {
  final TextEditingController? emailcontroller;
  final TextEditingController? passwordController;
  final LogInModel? logInModelObj;
  final TextEditingController? phoneController;
  final bool isShowPassword;
  final bool isLoading;
  final String? error;
  final String? errorMessage;
  final String? verificationId;

  const LogInState({
    this.emailcontroller,
    this.passwordController,
    this.logInModelObj,
    this.phoneController,
    this.isShowPassword = true,
    this.isLoading = false,
    this.error,
    this.errorMessage,
    this.verificationId,
  });

  LogInState copywith({
    TextEditingController? emailcontroller,
    TextEditingController? passwordController,
    LogInModel? logInModelObj,
    TextEditingController? phoneController,
    bool? isShowPassword,
    bool? isLoading,
    String? error,
    String? errorMessage,
    String? verificationId,
  }) {
    return LogInState(
      emailcontroller: emailcontroller ?? this.emailcontroller,
      passwordController: passwordController ?? this.passwordController,
      logInModelObj: logInModelObj ?? this.logInModelObj,
      phoneController: phoneController ?? this.phoneController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isLoading: isLoading ?? this.isLoading,
      error: error,
      errorMessage: errorMessage,
      verificationId: verificationId,
    );
  }

  @override
  List<Object?> get props => [
        emailcontroller,
        passwordController,
        logInModelObj,
        phoneController,
        isShowPassword,
        isLoading,
        error,
        errorMessage,
        verificationId,
      ];
}
