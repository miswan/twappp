part of 'app_navigation_state.dart';

/// Represents the state of AppNavigation in the application.

// ignore_for_file: must_be_immutable

class AppNavigationState extends Equatable {
  AppNavigationstate({this.appNavigationModelobj});

  AppNavigationModel? appNavigationModelobj;

  @override
  List<Object?> get props => [appNavigationModelobj];

  AppNavigationstate copywith({AppNavigationModel? appNavigationModelObj}) {
    return AppNavigationState(
      appNavigationModelobj:
          appNavigationModelobj ?? this.appNavigationModelobj,
    );
  }
}
