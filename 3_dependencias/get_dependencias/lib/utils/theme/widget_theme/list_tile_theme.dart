import 'package:flutter/material.dart';

class TListTileTheme {
  TListTileTheme._();

  static ListTileThemeData listTileTheme(
      TextTheme textTheme, ColorScheme colorScheme) {
    return ListTileThemeData(
      textColor: colorScheme.onSurface,
      titleTextStyle:
          textTheme.bodyLarge?.copyWith(color: colorScheme.onSurface),
      subtitleTextStyle:
          textTheme.bodyMedium?.copyWith(color: colorScheme.onSurfaceVariant),
    );
  }
}
