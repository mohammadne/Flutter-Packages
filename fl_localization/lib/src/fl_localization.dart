import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:fl_localization/fl_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:rxdart/rxdart.dart';

import 'initial_lang.dart';

//! String locales should be in form of
//! LANGUAGECODE_COUNTRYCODE

abstract class IFlLocalization {
  Future<void> initialize();

  String get locale;
  set locale(String locale);

  String languageCode(String locale);
  String countryCode(String locale);

  Stream<String> get localeStream;

  List<String> get supportedLocales;

  Map<String, dynamic> translations;
}

class FlLocalization implements IFlLocalization {
  FlLocalization._({
    @required this.supportedLocales,
    @required this.assetPrefix,
    this.initialLang,
  })  : assert(supportedLocales != null),
        assert(supportedLocales.isNotEmpty) {
    _langSubj
      ..listen(_loadTranslation)
      ..listen((locale) =>
          locale == null ? null : _langBox.put(_langBoxIndex, locale));
  }

  static FlLocalization instance;

  factory FlLocalization({
    List<String> supportedLocales,
    InitialLang initialLang,
    String assetPrefix,
  }) {
    if (instance == null)
      instance = FlLocalization._(
        supportedLocales: supportedLocales,
        assetPrefix: assetPrefix,
        initialLang: initialLang,
      );

    return instance;
  }

  final List<String> supportedLocales;
  final InitialLang initialLang;
  final String assetPrefix;

  Completer<void> _initCompleter;

  static const String _langBoxKey = 'lange_locale_key';
  static const int _langBoxIndex = 0;
  Box<String> _langBox;

  BehaviorSubject<String> _langSubj = BehaviorSubject.seeded(null);

  Map<String, dynamic> translations;

  @override
  String get locale => _langSubj.value;

  @override
  Stream<String> get localeStream => _langSubj.stream;

  @override
  set locale(String locale) {
    if (locale == this.locale) return;
    _langSubj.add(locale);
  }

  String languageCode(String locale) => locale.split('_').first;

  String countryCode(String locale) => locale.split('_').last;

  @override
  Future<void> initialize() async {
    if (_initCompleter != null) return _initCompleter.future;
    _initCompleter = Completer();

    Hive.initFlutter().then(
      (_) => Hive.openBox<String>(_langBoxKey)
          .then((box) => _langBox = box)
          .then((_) {
            final isEmptyBox = _langBox.isEmpty;
            if (!isEmptyBox) return _langBox.getAt(_langBoxIndex);

            if (initialLang == null) return supportedLocales.first;
            return initialLang.when(
              preferedLocale: (pref) => pref,
              system: () {
                final _deviceLocale = Platform.localeName;
                if (supportedLocales.contains(_deviceLocale))
                  return _deviceLocale;
                return supportedLocales.first;
              },
            );
          })
          .then((lang) => _langSubj.add(lang))
          .then((_) => _initCompleter.complete()),
    );

    return _initCompleter.future;
  }

  Future<void> _loadTranslation(String locale) async {
    if (locale == null) return;

    final lCode = languageCode(locale);
    final cCode = countryCode(locale);

    String jsonString = await rootBundle.loadString(
      '$assetPrefix/$lCode-$cCode.json',
    );

    Map<String, dynamic> jsonMap = json.decode(jsonString);
    translations = jsonMap.map((key, value) => MapEntry(key, value));
  }

  void close() {
    _langSubj.close();
  }
}
