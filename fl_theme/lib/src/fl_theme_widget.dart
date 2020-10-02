import 'package:fl_theme/fl_theme.dart';
import 'package:fl_theme/src/i_theme_manager.dart';
import 'package:flutter/material.dart';

import 'fl_theme.dart';

typedef BuilderType = Widget Function(
  ThemeData darkTheme,
  ThemeData theme,
);

class FlThemeWidget extends StatelessWidget {
  const FlThemeWidget({
    Key key,
    @required this.themeManager,
    @required this.builder,
    @required this.flTheme,
  }) : super(key: key);

  final IThemeManager themeManager;
  final BuilderType builder;
  final IFlTheme flTheme;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<ThemeState>(
      initialData: flTheme.themeState,
      stream: flTheme.themeStateStream,
      builder: (_, flThemeSnap) {
        final flTheme = flThemeSnap.data;
        return builder(
          themeManager.darkThemeData(flTheme.palette),
          flTheme.brightness.when(
            light: () => themeManager.lightThemeData(flTheme.palette),
            dark: () => themeManager.darkThemeData(flTheme.palette),
          ),
        );
      },
    );
  }
}
