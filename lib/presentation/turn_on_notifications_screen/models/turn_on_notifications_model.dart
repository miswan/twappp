import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [turn_on_notifications_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TurnOnNotificationsModel extends Equatable {
  final bool isNotificationsEnabled;
  final String? errorMessage;

  const TurnOnNotificationsModel({
    this.isNotificationsEnabled = false,
    this.errorMessage,
  });

  TurnOnNotificationsModel copyWith({
    bool? isNotificationsEnabled,
    String? errorMessage,
  }) {
    return TurnOnNotificationsModel(
      isNotificationsEnabled:
          isNotificationsEnabled ?? this.isNotificationsEnabled,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [isNotificationsEnabled, errorMessage];
}
