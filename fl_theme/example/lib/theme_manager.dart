import 'package:fl_theme/fl_theme.dart';
import 'package:flutter/material.dart';

class ThemeManager implements IThemeManager {
  @override
  ThemeData lightThemeData(ThemePalette palette) => ThemeData.from(
        textTheme: _textTheme.apply(
          bodyColor: Colors.black,
          displayColor: Color(0xff9C9C9C),
        ),
        colorScheme: palette.when(
          orange: () => ColorScheme.light(
            primary: Colors.orange.shade300,
          ),
          blue: () => ColorScheme.light(
            primary: Colors.blue.shade300,
          ),
        ),
      ).copyWith(
        disabledColor: Color(0xff9C9C9C),
      );

  @override
  ThemeData darkThemeData(ThemePalette palette) => ThemeData.from(
        textTheme: _textTheme,
        colorScheme: palette.when(
          orange: () => ColorScheme.dark(
            primary: Colors.orange.shade700,
          ),
          blue: () => ColorScheme.dark(
            primary: Colors.blue.shade700,
          ),
        ),
      );

  /// [bodyColor] => headline, title, subhead, button, body1, and body2
  /// [displayColor] => display1 through display4, and caption
  TextTheme _textTheme = TextTheme(
    headline5: TextStyle(fontSize: 28),
    subtitle1: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
    ),
    subtitle2: TextStyle(fontSize: 14),
    caption: TextStyle(fontSize: 12),
  ).apply(fontFamily: 'Dana');
}

/*
NAME         SIZE  WEIGHT  SPACING
headline1    96.0  light   -1.5
headline2    60.0  light   -0.5
headline3    48.0  normal   0.0
headline4    34.0  normal   0.25
headline5    24.0  normal   0.0
headline6    20.0  medium   0.15
subtitle1    16.0  normal   0.15
subtitle2    14.0  medium   0.1
body1        16.0  normal   0.5
body2        14.0  normal   0.25
button       14.0  medium   0.75
caption      12.0  normal   0.4
overline     10.0  normal   1.5
*/
