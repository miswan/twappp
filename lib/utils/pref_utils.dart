import 'package:shared_preferences.dart';

class PrefUtils {
  PrefUtils._();
  static final PrefUtils instance = PrefUtils._();

  static const String _themeKey = 'app_theme';

  Future<void> setThemeData(String themeType) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(_themeKey, themeType);
  }

  Future<String?> getThemeData() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getString(_themeKey);
  }
}
