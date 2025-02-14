part of 'stories_event.dart';

/// Abstract class for all events that can be dispatched from the

///Stories widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class StoriesEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the stories widget is first created.

class StoriesInitialEvent extends StoriesEvent {
  @override
  List<Object?> get props => [];
}
