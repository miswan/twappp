import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../models/splash_model.dart';
import '../../../core/app_export.dart';

part 'splash_event.dart';
part 'splash_state.dart';

class SplashBloc extends Bloc<SplashEvent, Splashstate> {
  SplashBloc() : super(Splashstate(splashModelObj: const SplashModel())) {
    on<SplashInitialEvent>(_onInitialize);
  }

  _onInitialize(
    SplashInitialEvent event,
    Emitter<Splashstate> emit,
  ) async {
    await Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.pushReplacementNamed(
        AppRoutes.onboardingOneScreen,
      );
    });
  }
}
