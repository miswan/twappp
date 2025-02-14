part of 'for_you_event.dart';

/// Abstract class for all events that can be dispatched from the

///ForYou widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class ForYouEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the ForYou widget is first created.

class ForYouInitialEvent extends ForYouEvent {
  @override
  List<Object?> get props => [];
}
