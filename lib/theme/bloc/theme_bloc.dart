import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';
import '../../core/app_export.dart';

enum ThemeType { light, dark }

class ThemeState {
  ThemeType themeType;

  ThemeState({required this.themeType});
}

class ThemeBloc extends Bloc<dynamic, ThemeState> {
  ThemeBloc(ThemeState initial) : super(initial) {
    on<dynamic>((event, emit) {
      // Handle theme changes here
    });
  }
}
