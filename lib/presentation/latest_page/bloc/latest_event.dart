part of 'latest_event.dart';

/// Abstract class for all events that can be dispatched from the

///Latest widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class LatestEvent extends Equatable {

@override

List<Object?> get props [];

}

/// Event that is dispatched when the Latest widget is first created.

class LatestInitialEvent extends LatestEvent {

@override

List<Object?> get props [];

}