part of 'log_in_bloc.dart';

class LogInState extends Equatable {
  final TextEditingController? emailcontroller;
  final TextEditingController? passwordController;
  final bool isShowPassword;
  final bool isLoading;
  final String? error;

  const LogInState({
    this.emailcontroller,
    this.passwordController,
    this.isShowPassword = true,
    this.isLoading = false,
    this.error,
  });

  LogInState copywith({
    TextEditingController? emailcontroller,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isLoading,
    String? error,
  }) {
    return LogInState(
      emailcontroller: emailcontroller ?? this.emailcontroller,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isLoading: isLoading ?? this.isLoading,
      error: error,
    );
  }

  @override
  List<Object?> get props => [
        emailcontroller,
        passwordController,
        isShowPassword,
        isLoading,
        error,
      ];
}
