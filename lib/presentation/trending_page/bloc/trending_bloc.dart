import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/momentcard_item_model.dart';
import '../repository/trending_repository.dart';

// Events
abstract class TrendingEvent extends Equatable {
  const TrendingEvent();

  @override
  List<Object> get props => [];
}

class LoadTrendingData extends TrendingEvent {}

// States
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

// Bloc
class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  final TrendingRepository repository;

  TrendingBloc({required this.repository}) : super(TrendingInitial()) {
    on<LoadTrendingData>(_onLoadTrendingData);
  }

  Future<void> _onLoadTrendingData(
    LoadTrendingData event,
    Emitter<TrendingState> emit,
  ) async {
    emit(TrendingLoading());
    try {
      final moments = await repository.getTrendingMoments();
      emit(TrendingLoaded(moments));
    } catch (e) {
      emit(TrendingError(e.toString()));
    }
  }
}
