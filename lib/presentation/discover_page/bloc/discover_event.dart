part of 'discover_bloc.dart';

@immutable
abstract class DiscoverEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class DiscoverInitialEvent extends DiscoverEvent {}
