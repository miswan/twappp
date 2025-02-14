import 'package:equatable/equatable.dart';

class TurnOnNotificationsState extends Equatable {
  const TurnOnNotificationsState({this.isNotificationEnabled = false});

  final bool isNotificationEnabled;

  TurnOnNotificationsState copyWith({bool? isNotificationEnabled}) {
    return TurnOnNotificationsState(
      isNotificationEnabled:
          isNotificationEnabled ?? this.isNotificationEnabled,
    );
  }

  @override
  List<Object?> get props => [isNotificationEnabled];
}
