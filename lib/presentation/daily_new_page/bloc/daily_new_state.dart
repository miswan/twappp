part of 'daily_new_bloc.dart';

class DailyNewState extends Equatable {
  final DailyNewModel? dailyNewModelObj;

  const DailyNewState({this.dailyNewModelObj});

  @override
  List<Object?> get props => [dailyNewModelObj];

  DailyNewState copyWith({DailyNewModel? dailyNewModelObj}) {
    return DailyNewState(
      dailyNewModelObj: dailyNewModelObj ?? this.dailyNewModelObj,
    );
  }
}
