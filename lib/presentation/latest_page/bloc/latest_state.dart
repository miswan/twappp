part of 'latest_bloc.dart';

class LatestState extends Equatable {
  final LatestModel? latestModelObj;

  const LatestState({
    this.latestModelObj,
  });

  LatestState copyWith({
    LatestModel? latestModelObj,
  }) {
    return LatestState(
      latestModelObj: latestModelObj ?? this.latestModelObj,
    );
  }

  @override
  List<Object?> get props => [latestModelObj];
}
