part of 'turn_on_notifications_event.dart';

/// Abstract class for all events that can be dispatched from the

///TurnOnNotifications widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class TurnOnNotificationsEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the TurnOnNotifications widget is first created.

class TurnOnNotificationsInitialEvent extends TurnOnNotificationsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing switch

// ignore_for_file: must_be_immutable

class ChangeSwitchEvent extends TurnOnNotificationsEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [value];
}
