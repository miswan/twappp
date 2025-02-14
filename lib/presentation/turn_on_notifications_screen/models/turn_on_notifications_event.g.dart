part of 'turn_on_notifications_event.dart';

/// Event that is dispatched when the TurnOnNotifications widget is first created.
class TurnOnNotificationsInitialEvent extends TurnOnNotificationsEvent {
  const TurnOnNotificationsInitialEvent();

  @override
  List<Object?> get props => [];
}

/// Event for changing switch
class ChangeSwitchEvent extends TurnOnNotificationsEvent {
  const ChangeSwitchEvent({required this.value});

  final bool value;

  @override
  List<Object?> get props => [value];
}
