import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

class AppConfig {
  static const double designWight = 428;
  static const double designHeight = 926;

  static const bool DEBUG = true;

  static const Level LOG_LEVEL = Level.debug;

  static ThemeMode themeMode = ThemeMode.light;

  static Locale localeMode = const Locale.fromSubtags(languageCode: 'vi');

}
