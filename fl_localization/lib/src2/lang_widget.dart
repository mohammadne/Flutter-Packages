import 'package:fl_localization/src2/fl_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'initial/initial_lang.dart';
import 'localization_delegate.dart';

/// 1- strings should be in en_US format
/// 2- there are 2 seperate setup part
/// 3- brief delay moment in changing locale , better handle
/// 4- initial things should load before ui creaon

typedef BuilderType = Widget Function(
  Iterable<LocalizationsDelegate> localizationsDelegates,
  List<Locale> supportedLocales,
  Locale currentLocale,
);

class LangWidget extends StatelessWidget {
  final InitialLang initialLang;
  final BuilderType builder;

  final IFlLocalization flLocalization;

  LangWidget({
    @required this.flLocalization,
    @required this.builder,
    this.initialLang,
  });

  Locale get locale => _getLocale(flLocalization.locale);
  List<Locale> get supportedLocales =>
      flLocalization.supportedLocales.map(_getLocale).toList();

  Map<String, dynamic> get translations => flLocalization.translations;

  LocalizationsDelegate get _appLocalization => LocalizationDelegate(
        supportedLocales: supportedLocales,
        translations: translations,
      );

  String _getLanguageCode(String locale) => locale.split('_').first;
  String _getCountryCode(String locale) => locale.split('_').last;
  Locale _getLocale(String locale) =>
      Locale(_getLanguageCode(locale), _getCountryCode(locale));

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<String>(
      initialData: flLocalization.locale,
      stream: flLocalization.localeStream,
      builder: (context, langSnap) => builder(
        [
          _appLocalization,
          GlobalWidgetsLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales,
        locale,
      ),
    );
  }
}
