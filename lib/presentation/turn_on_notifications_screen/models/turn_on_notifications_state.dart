import 'package:equatable/equatable.dart';
import 'turn_on_notifications_model.dart';

part of 'turn_on_notifications_state.dart';

/// Represents the state of TurnOnNotifications in the application.

// ignore_for_file: must_be_immutable

class TurnOnNotificationsState extends Equatable {
  TurnOnNotificationsState({
    this.isSelectedSwitch = false,
    this.turnOnNotificationsModelObj,
  });

  TurnOnNotificationsModel? turnOnNotificationsModelObj;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [isSelectedSwitch, turnOnNotificationsModelObj];

  TurnOnNotificationsState copyWith({
    bool? isSelectedSwitch,
    TurnOnNotificationsModel? turnOnNotificationsModelObj,
  }) {
    return TurnOnNotificationsState(
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      turnOnNotificationsModelObj:
          turnOnNotificationsModelObj ?? this.turnOnNotificationsModelObj,
    );
  }
}