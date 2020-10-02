import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';

import '../types/theme_state.dart';
import 'theme_brightness_dao.dart';
import 'theme_palette_dao.dart';

part 'theme_state_dao.g.dart';

@HiveType(typeId: 2)
class ThemeStateDao {
  ThemeStateDao({
    @required this.brightnessDao,
    @required this.paletteDao,
  });

  @HiveField(0)
  ThemeBrightnessDao brightnessDao;

  @HiveField(1)
  ThemePaletteDao paletteDao;
}

extension ThemeStateDaoEx on ThemeStateDao {
  ThemeState toThemeState() => ThemeState(
        brightness: brightnessDao.toThemeBrightness(),
        palette: paletteDao.toThemePalette(),
      );
}
