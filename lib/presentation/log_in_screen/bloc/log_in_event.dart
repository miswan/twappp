part of 'log_in_bloc.dart';

@immutable
abstract class LogInEvent extends Equatable {
  const LogInEvent();

  @override
  List<Object?> get props => [];
}

class LogInInitialEvent extends LogInEvent {}

class ChangePasswordVisibilityEvent extends LogInEvent {
  final bool value;

  const ChangePasswordVisibilityEvent({required this.value});

  @override
  List<Object?> get props => [value];
}

class SubmitLoginEvent extends LogInEvent {
  final String email;
  final String password;

  const SubmitLoginEvent({required this.email, required this.password});

  @override
  List<Object?> get props => [email, password];
}

class SendOtpEvent extends LogInEvent {}
