part of 'theme_bloc.dart';

class ThemeState extends Equatable {
  final AppTheme themeType;

  const ThemeState({required this.themeType});

  ThemeState copyWith({AppTheme? themeType}) {
    return ThemeState(
      themeType: themeType ?? this.themeType,
    );
  }

  @override
  List<Object> get props => [themeType];
}
