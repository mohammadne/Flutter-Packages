import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../dao/theme_palette_dao.dart';

part 'theme_palette.freezed.dart';
part 'theme_palette.g.dart';

@freezed
abstract class ThemePalette with _$ThemePalette {
  const factory ThemePalette.orange() = Orange;
  const factory ThemePalette.blue() = Blue;

  factory ThemePalette.fromJson(Map<String, dynamic> json) =>
      _$ThemePaletteFromJson(json);
}

extension ThemePaletteEx on ThemePalette {
  ThemePaletteDao toThemePaletteDao() => ThemePaletteDao(scheme: this.toJson());
}
