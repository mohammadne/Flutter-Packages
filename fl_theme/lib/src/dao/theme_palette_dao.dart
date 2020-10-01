import 'package:meta/meta.dart';

import 'package:hive/hive.dart';

import '../types/theme_palette.dart';

part 'theme_palette_dao.g.dart';

@HiveType(typeId: 1)
class ThemePaletteDao extends HiveType {
  ThemePaletteDao({@required this.scheme});

  @HiveField(0)
  Map<String, dynamic> scheme;
}

extension ThemePaletteDaoEx on ThemePaletteDao {
  ThemePalette toThemePalette() => ThemePalette.fromJson(scheme);
}
