import 'package:equatable/equatable.dart';

part 'turn_on_notifications_event.g.dart';

abstract class TurnOnNotificationsEvent extends Equatable {
  const TurnOnNotificationsEvent();

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
