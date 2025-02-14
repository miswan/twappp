part of 'discover_bloc.dart';

class DiscoverState extends Equatable {
  final DiscoverModel? discoverModelObj;

  const DiscoverState({this.discoverModelObj});

  DiscoverState copyWith({DiscoverModel? discoverModelObj}) {
    return DiscoverState(
      discoverModelObj: discoverModelObj ?? this.discoverModelObj,
    );
  }

  @override
  List<Object?> get props => [discoverModelObj];
}
