import 'package:flutter/widgets.dart';

class Localization {
  Map<String, dynamic> _translations;

  set translations(val) => _translations = val;

  static Localization _instance;
  static Localization get instance => _instance ?? (_instance = Localization());
  static Localization of(BuildContext context) =>
      Localizations.of<Localization>(context, Localization);

  static bool load(Map<String, dynamic> translations) {
    instance._translations = translations;
    return translations == null ? false : true;
  }

  String tr(String key) {
    final keys = key.split('.');
    final kHead = keys.first;

    var value = _translations[kHead];

    for (var i = 1; i < keys.length; i++) {
      if (value is Map<String, dynamic>) value = value[keys[i]];
    }

    return value ?? key;
  }
}
