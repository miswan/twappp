import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import '../models/detailed_profile_model.dart';

part 'detailed_profile_event.dart';
part 'detailed_profile_state.dart';

/// A bloc that manages the state of a DetailedProfile according to the event that is dispatched to it.

class DetailedProfileBloc
    extends Bloc<DetailedProfileEvent, DetailedProfileState> {
  DetailedProfileBloc(DetailedProfileState initialState) : super(initialState) {
    on<DetailedProfileInitialEvent>(_onInitialize);
  }

  _onInitialize(
    DetailedProfileInitialEvent event,
    Emitter<DetailedProfileState> emit,
  ) async {
    emit(state.copyWith(
      detailedProfileModelObj: DetailedProfileModel(
        username: "Rosalia",
        email: "xyz@gmail.com",
        phone: "12-3456-789-000",
        gender: "Female",
        dateOfBirth: "21-08-1992",
      ),
    ));
  }
}
