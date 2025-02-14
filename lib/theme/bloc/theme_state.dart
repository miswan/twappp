part of 'theme_state.dart';

class Themestate extends Equatable {
  ThemeState({required this.themeType});

  final String themeType;

  @override
  List<Object?> get props => [themeType];

  Themestate copywith({string? themeType}) {
    return ThemeState(themeType: themeType ?? this.themeType);
  }
}
