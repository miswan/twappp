part of 'discover_event.dart';

/// Abstract class for all events that can be dispatched from the

///Discover widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class DiscoverEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Discover widget is first created.

class DiscoverInitialEvent extends DiscoverEvent {
  @override
  List<Object?> get props => [];
}
