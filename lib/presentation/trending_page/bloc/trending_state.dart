part of 'trending_bloc.dart';

abstract class TrendingState extends Equatable {
  const TrendingState();

  @override
  List<Object> get props => [];
}

class TrendingInitial extends TrendingState {}

class TrendingLoading extends TrendingState {}

class TrendingLoaded extends TrendingState {
  final List<MomentcardItemModel> moments;

  const TrendingLoaded(this.moments);

  @override
  List<Object> get props => [moments];
}

class TrendingError extends TrendingState {
  final String message;

  const TrendingError(this.message);

  @override
  List<Object> get props => [message];
}
