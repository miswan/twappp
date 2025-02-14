import 'dart:convert';
import 'dart:ui';
import 'package:flutter/scheduler.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../theme/bloc/theme_bloc.dart';

// ignore_for_file: must_be_immutable

class PrefUtils {
  static SharedPreferences? _prefs;

  static PrefUtils? _instance;

  PrefUtils._internal();

  factory PrefUtils() {
    _instance ??= PrefUtils._internal();
    return _instance!;
  }

  Future<void> init() async {
    _prefs ??= await SharedPreferences.getInstance();
    print('SharedPreference Initialized');
  }

  ///will clear all the data stored in preference
  void clearPreferencesData() async {
    _prefs!.clear();
  }

  Future<void> setThemeData(String value) {
    return _prefs!.setString('themeData', value);
  }

  ThemeType getThemeData() {
    bool isDark = _prefs?.getBool('isDarkMode') ?? false;
    return isDark ? ThemeType.dark : ThemeType.light;
  }
}
