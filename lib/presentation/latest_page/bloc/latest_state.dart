part of 'latest_state.dart';

/// Represents the state of Latest in the application.

// ignore_for_file: must_be_immutable

class Lateststate extends Equatable {
  LatestState({this.latestModelobj});

  LatestModel? latestModelobj;

  @override
  List<Object?> get props => [latestModelobj];

  Lateststate copywith({LatestModel? latestModelObj}) {
    return LatestState(
      latestModelObj: latestModelobj ?? this.latestModelobj,
    );
  }
}
