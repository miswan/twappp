import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/momentcard_item_model.dart';
import 'moment_card_event.dart';
import 'moment_card_state.dart';

class MomentCardBloc extends Bloc<MomentCardEvent, MomentCardState> {
  MomentCardBloc() : super(MomentCardInitial()) {
    on<LoadMomentCards>(_onLoadMomentCards);
  }

  Future<void> _onLoadMomentCards(
    LoadMomentCards event,
    Emitter<MomentCardState> emit,
  ) async {
    emit(MomentCardLoading());
    try {
      // Replace this with actual data fetching logic
      final moments = [
        MomentcardItemModel(
          image: "img_rectangle_49",
          username: "John Doe",
          timeAgo: "2 hours ago",
          description: "This is a sample moment description",
          tag1: "#travel",
          tag2: "#photography",
          tag3: "#adventure",
        ),
      ];
      emit(MomentCardLoaded(moments));
    } catch (e) {
      emit(MomentCardError(e.toString()));
    }
  }
}
