part of 'daily_new_state.dart';

/// Represents the state of DailyNew in the application.

// ignore_for_file: must_be_immutable

class DailyNewState extends Equatable {
  DailyNewState({this.dailyNewModelobj});

  DailyNewModel? dailyNewModelobj;

  @override
  List<Object?> get props => [dailyNewModelobj];

  DailyNewState copywith({DailyNewModel? dailyNewModelobj}) {
    return DailyNewState(
      dailyNewModelobj: dailyNewModelobj ?? this.dailyNewModelobj,
    );
  }
}
