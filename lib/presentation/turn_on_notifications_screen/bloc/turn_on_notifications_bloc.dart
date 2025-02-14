import 'package:flutter_bloc/flutter_bloc.dart';
import '../models/turn_on_notifications_event.dart';
import 'turn_on_notifications_state.dart';

class TurnOnNotificationsBloc
    extends Bloc<TurnOnNotificationsEvent, TurnOnNotificationsState> {
  TurnOnNotificationsBloc() : super(const TurnOnNotificationsState()) {
    on<TurnOnNotificationsInitialEvent>(_onInitial);
    on<ChangeSwitchEvent>(_onChangeSwitch);
  }

  void _onInitial(
    TurnOnNotificationsInitialEvent event,
    Emitter<TurnOnNotificationsState> emit,
  ) {
    // Initialize any required state
  }

  void _onChangeSwitch(
    ChangeSwitchEvent event,
    Emitter<TurnOnNotificationsState> emit,
  ) {
    emit(state.copyWith(isNotificationEnabled: event.value));
  }
}
