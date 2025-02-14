part of 'notifications_state.dart';

/// Represents the state of Notifications in the application.

// ignore_for_file: must_be_immutable

class Notificationsstate extends Equatable {
  Notificationsstate({this.notificationsModelobj});

  NotificationsModel? notificationsModelobj;

  @override
  List<Object?> get props => [notificationsModelobj];

  Notificationsstate copywith({NotificationsModel? notificationsModelobj}) {
    return Notificationsstate(
      notificationsModelobj:
          notificationsModelobj ?? this.notificationsModelobj,
    );
  }
}
