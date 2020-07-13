import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'bloc/lang_bloc.dart';
import 'initial/initial_lang.dart';

typedef BuilderType = Widget Function(
  Iterable<LocalizationsDelegate> localizationsDelegates,
  List<Locale> supportedLocales,
  Locale currentLocale,
);

class FlLocalization extends StatefulWidget {
  /// note that the string value is used for accessing and setting locales
  final Map<String, Locale> supportedLocalesHashMap;

  final InitialLang initialLang;
  final BuilderType builder;
  final String assetPrefix;
  FlLocalization({
    @required this.supportedLocalesHashMap,
    @required this.assetPrefix,
    @required this.builder,
    this.initialLang,
  });

  static void setLocale(BuildContext context, String locale) {
    _FlLocalizationState state = context.findAncestorStateOfType();
    state.bloc.add(LangEvent.setLocale(locale));
  }

  static String currentLocale(BuildContext context) {
    _FlLocalizationState state = context.findAncestorStateOfType();
    return state.bloc.state.locale;
  }

  static List<String> supportedLocalesKey(BuildContext context) {
    _FlLocalizationState state = context.findAncestorStateOfType();
    return state.supportedLocalesHashMap.keys.toList();
  }

  @override
  _FlLocalizationState createState() => _FlLocalizationState();
}

class _FlLocalizationState extends State<FlLocalization> {
  LangBloc bloc;

  Map<String, Locale> get supportedLocalesHashMap =>
      widget.supportedLocalesHashMap;

  @override
  void initState() {
    super.initState();
    bloc = LangBloc(
      assetPrefix: widget.assetPrefix,
      supportedLocalesHashMap: widget.supportedLocalesHashMap,
      initialLang: widget.initialLang ?? InitialLang.firstItem(),
    )..add(LangEvent.loadTranslations());
  }

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LangBloc, LangState>(
      bloc: bloc,
      builder: (_, state) => state.isLoaded
          ? widget.builder(
              [
                _FlLocalizationDelegate(
                  supportedLocales: supportedLocalesHashMap.values.toList(),
                  translations: bloc.translations,
                ),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              widget.supportedLocalesHashMap.values.toList(),
              widget.supportedLocalesHashMap[state.locale],
            )
          : Container(),
    );
  }
}

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

class _FlLocalizationDelegate extends LocalizationsDelegate<Localization> {
  final Iterable<Locale> supportedLocales;
  final Map<String, dynamic> translations;

  ///  * use only the lang code to generate i18n file path like en.json or ar.json
  // final bool useOnlyLangCode;

  _FlLocalizationDelegate({this.translations, this.supportedLocales}) {
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
