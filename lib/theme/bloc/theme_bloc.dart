
import 'package:flutter/material.dart';

import 'package:equatable/equatable.dart';

import '../../core/app_export.dart';

part 'theme_event.dart';

part 'theme_state.dart';

class ThemeBloc extends Bloc<ThemeEvent, ThemeState> {

ThemeBloc(ThemeState initialstate) : super(initialstate) {

on<ThemeChangeEvent>(_changeTheme);

}

_change Theme (

ThemeChangeEvent event,

Emitter<Themestate> emit,

) async {

emit(state.copywith(themeType: event.themeType));

}