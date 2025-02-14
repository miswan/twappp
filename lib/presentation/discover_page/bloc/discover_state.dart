part of 'discover_state.dart';

/// Represents the state of Discover in the application.

// ignore_for_file: must_be_immutable

class DiscoverState extends Equatable {
  DiscoverState({this.discoverModelObj});

  DiscoverModel? discoverModelobj;

  @override
  List<Object?> get props => [discoverModelobj];

  DiscoverState copywith({DiscoverModel? discoverModelobj}) {
    return Discoverstate(
      discoverModelobj: discoverModelobj ?? this.discoverModelobj,
    );
  }
}
