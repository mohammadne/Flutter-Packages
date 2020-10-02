import 'package:flutter/foundation.dart';

import 'package:hive/hive.dart';

import '../types/theme_palette.dart';

part 'theme_palette_dao.g.dart';

@HiveType(typeId: 1)
class ThemePaletteDao {
  ThemePaletteDao({@required this.palette});

  @HiveField(0)
  Map<String, dynamic> palette;
}

extension ThemePaletteDaoEx on ThemePaletteDao {
  ThemePalette toThemePalette() => ThemePalette.fromJson(palette);
}
