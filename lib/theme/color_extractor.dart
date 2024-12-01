import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:json_theme/json_theme.dart';

Future<ThemeData> lightColorExtractor() async {
  final lightThemeStr =
      await rootBundle.loadString('assets/json/theme_light.json');
  final lightThemeJson = jsonDecode(lightThemeStr);
  final ThemeData lightTheme = ThemeDecoder.decodeThemeData(lightThemeJson)!;

  return lightTheme;
}

Future<ThemeData> darkColorExtractor() async {
  final darkThemeStr =
      await rootBundle.loadString('assets/json/theme_dark.json');
  final darkThemeJson = jsonDecode(darkThemeStr);
  final ThemeData darkTheme = ThemeDecoder.decodeThemeData(darkThemeJson)!;

  return darkTheme;
}
