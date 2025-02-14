part of 'account_view_event.dart';

/// Abstract class for all events that can be dispatched from the

///AccountView widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class AccountViewEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Accountview widget is first created.

class AccountViewInitialEvent extends AccountviewEvent {
  @override
  List<Object?> get props => [];
}
