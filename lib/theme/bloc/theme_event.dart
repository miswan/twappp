part of 'theme_bloc.dart';

import 'package:your_project/utils/pref_utils.dart';

abstract class ThemeEvent extends Equatable {
  const ThemeEvent();

  @override
  List<Object> get props => [];
}

class ThemeChangeEvent extends ThemeEvent {
  final AppTheme themeType;

  const ThemeChangeEvent({required this.themeType});

  @override
  List<Object> get props => [themeType];
}