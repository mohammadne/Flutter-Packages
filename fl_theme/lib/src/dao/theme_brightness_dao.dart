import 'package:meta/meta.dart';

import 'package:hive/hive.dart';

import '../types/theme_brightness.dart';

part 'theme_brightness_dao.g.dart';

@HiveType(typeId: 0)
class ThemeBrightnessDao extends HiveType {
  ThemeBrightnessDao({@required this.brightness});

  @HiveField(0)
  Map<String, dynamic> brightness;
}

extension ThemeBrightnessDaoEx on ThemeBrightnessDao {
  ThemeBrightness toThemeBrightness() => ThemeBrightness.fromJson(brightness);
}
