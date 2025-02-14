part of 'streaming_event.dart';

/// Abstract class for all events that can be dispatched from the

///Streaming widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class StreamingEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Streaming widget is first created.

class StreamingInitialEvent extends StreamingEvent {
  @override
  List<Object?> get props => [];
}
