part of 'log_in_event.dart';

/// Abstract class for all events that can be dispatched from the

///LogIn widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class LogInEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Login widget is first created.

class LogInInitialEvent extends LogInEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility

// ignore_for_file: must_be_immutable

class ChangePasswordVisibilityEvent extends LogInEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
