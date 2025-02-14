import 'package:equatable/equatable.dart';

part of 'search_bloc.dart';

@immutable
abstract class SearchEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class SearchInitialEvent extends SearchEvent {}

class SearchQueryChangedEvent extends SearchEvent {
  final String query;

  SearchQueryChangedEvent(this.query);

  @override
  List<Object?> get props => [query];
}

/// Event when search is submitted
class SearchSubmittedEvent extends SearchEvent {
  final String query;

  const SearchSubmittedEvent(this.query);

  @override
  List<Object?> get props => [query];
}

/// Event to clear search
class SearchClearedEvent extends SearchEvent {
  const SearchClearedEvent();
}
