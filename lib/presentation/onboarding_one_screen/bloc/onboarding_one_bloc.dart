import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../../core/app_export.dart';

import '../models/onboarding_one_model.dart';

part 'onboarding_one_event.dart';

part 'onboarding_one_state.dart';

/// A bloc that manages the state of a Onboardingone according to the event that is dispatched to it.

class OnboardingOneBloc extends Bloc<OnboardingOneEvent, OnboardingOneState> {
  OnboardingOneBloc(OnboardingOneState initialstate) : super(initialstate) {
    on<OnboardingOneInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OnboardingOneInitialEvent event,
    Emitter<OnboardingOneState> emit,
  ) async {}
}
