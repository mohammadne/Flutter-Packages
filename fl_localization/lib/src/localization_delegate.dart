import 'package:flutter/widgets.dart';

import 'localization.dart';

class LocalizationDelegate extends LocalizationsDelegate<Localization> {
  final Iterable<Locale> supportedLocales;
  final Map<String, dynamic> translations;

  ///  * use only the lang code to generate i18n file path like en.json or ar.json
  // final bool useOnlyLangCode;

  LocalizationDelegate({this.translations, this.supportedLocales}) {
    Localization.instance.translations = translations;
  }

  @override
  bool isSupported(Locale locale) => supportedLocales.contains(locale);

  @override
  Future<Localization> load(Locale value) {
    Localization.load(translations);
    return Future.value(Localization.instance);
  }

  @override
  bool shouldReload(LocalizationsDelegate<Localization> old) => false;
}
