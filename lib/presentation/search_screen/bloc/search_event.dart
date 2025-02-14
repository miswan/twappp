part of 'search_event.dart';

/// Abstract class for all events that can be dispatched from the

///Search widget.

///

/// Events must be immutable and implement the [Equatable] interface.

class SearchEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

/// Event that is dispatched when the Search widget is first created.

class SearchInitialEvent extends SearchEvent {
  @override
  List<Object?> get props => [];
}
