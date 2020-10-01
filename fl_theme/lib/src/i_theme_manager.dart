import 'package:flutter/material.dart';

import 'types/theme_palette.dart';

abstract class IThemeManager {
  ThemeData lightThemeData(ThemePalette theme);
  ThemeData darkThemeData(ThemePalette theme);
}
