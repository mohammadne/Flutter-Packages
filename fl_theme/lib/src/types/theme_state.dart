import 'package:freezed_annotation/freezed_annotation.dart';

import '../dao/theme_state_dao.dart';
import 'theme_brightness.dart';
import 'theme_palette.dart';

part 'theme_state.freezed.dart';

@freezed
abstract class ThemeState with _$ThemeState {
  const factory ThemeState({
    @required ThemeBrightness brightness,
    @required ThemePalette palette,
  }) = _ThemeState;
}

extension ThemeStateEx on ThemeState {
  ThemeStateDao toThemeStateDao() => ThemeStateDao(
        brightnessDao: brightness.toThemeBrightnessDao(),
        paletteDao: palette.toThemePaletteDao(),
      );
}
