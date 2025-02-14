part of 'notifications_bloc.dart';

class NotificationsState extends Equatable {
  final NotificationsModel? notificationsModelObj;

  const NotificationsState({this.notificationsModelObj});

  NotificationsState copyWith({NotificationsModel? notificationsModelObj}) {
    return NotificationsState(
      notificationsModelObj:
          notificationsModelObj ?? this.notificationsModelObj,
    );
  }

  @override
  List<Object?> get props => [notificationsModelObj];
}
