part of 'notifications_event.dart';

/// Abstract class for all events that can be dispatched from the

///Notifications widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class NotificationsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Notifications widget is first created.

class NotificationsInitialEvent extends NotificationsEvent {
  @override
  List<Object?> get props => [];
}
