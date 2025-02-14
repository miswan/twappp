import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/detailed_profile_model.dart';

part 'detailed_profile_event.dart';

part 'detailed_profile_state.dart';

/// A bloc that manages the state of a DetailedProfile according to the event that is dispatched to it.

class DetailedProfileBloc
    extends Bloc<DetailedProfileEvent, DetailedProfileState> {
  DetailedProfileBloc(DetailedProfileState initialstate) : super(initialstate) {
    on<DetailedProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailedProfileInitialEvent event,
    Emitter<DetailedProfilestate> emit,
  ) async {}
}
