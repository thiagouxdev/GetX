import 'package:flutter/material.dart';
import 'package:get_dependencias/utils/theme/widget_theme/text_theme.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
    textTheme: TTextTheme.textTheme,
    colorScheme: const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xFFF48F42),
      onPrimary: Color(0xFFFFFFFF),
      secondary: Color(0xFF755846),
      onSecondary: Color(0xFFFFFFFF),
      error: Color(0xFFBA1A1A),
      onError: Color(0xFFFFFFFF),
      surface: Color(0xFFFFFBFA),
      onSurface: Color(0xFF221A15),
      onSurfaceVariant: Color(0xFF52443C),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textTheme: TTextTheme.textTheme,
    colorScheme: const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xFFFA9446),
      onPrimary: Color(0xFF502400),
      secondary: Color(0xFFE5BFA8),
      onSecondary: Color(0xFF422B1B),
      error: Color(0xFFFFB4AB),
      onError: Color(0xFF690005),
      surface: Color(0xFF050505),
      onSurface: Color(0xFFF0ECEB),
      onSurfaceVariant: Color(0xFFD7C3B7),
    ),
  );
}
