import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/momentcard_item_model.dart';

part 'trending_event.dart';
part 'trending_state.dart';

class TrendingBloc extends Bloc<TrendingEvent, TrendingState> {
  TrendingBloc() : super(TrendingInitial()) {
    on<LoadTrendingData>(_onLoadTrendingData);
  }

  void _onLoadTrendingData(
      LoadTrendingData event, Emitter<TrendingState> emit) async {
    emit(TrendingLoading());
    try {
      // TODO: Add your data fetching logic here
      final List<MomentcardItemModel> moments = []; // Replace with actual data
      emit(TrendingLoaded(moments));
    } catch (e) {
      emit(TrendingError(e.toString()));
    }
  }
}
