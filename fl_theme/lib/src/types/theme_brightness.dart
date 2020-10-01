import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';

import '../dao/theme_brightness_dao.dart';

part 'theme_brightness.freezed.dart';
part 'theme_brightness.g.dart';

@freezed
abstract class ThemeBrightness with _$ThemeBrightness {
  const factory ThemeBrightness.light() = Light;
  const factory ThemeBrightness.dark() = Dark;

  factory ThemeBrightness.fromJson(Map<String, dynamic> json) =>
      _$ThemeBrightnessFromJson(json);
}

extension ThemeBrightnessEx on ThemeBrightness {
  ThemeBrightnessDao toThemeBrightnessDao() =>
      ThemeBrightnessDao(brightness: this.toJson());
}
