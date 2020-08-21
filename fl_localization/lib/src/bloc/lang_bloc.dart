import 'dart:async';
import 'dart:convert';
import 'dart:ui';

import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:meta/meta.dart';

import '../initial/initial_lang.dart';

part 'lang_bloc.freezed.dart';
part 'lang_event.dart';
part 'lang_state.dart';

class LangBloc extends HydratedBloc<LangEvent, LangState> {
  Map<String, dynamic> translations;

  final Map<String, Locale> supportedLocalesHashMap;
  final InitialLang initialLang;
  final String assetPrefix;

  LangBloc({
    @required this.initialLang,
    @required this.assetPrefix,
    @required this.supportedLocalesHashMap,
  }) : super(LangState(
          initialLang.when(
            firstItem: () => supportedLocalesHashMap.keys.toList().first,
            preferedLocale: (locale) => locale,
          ),
          false,
        ));

  @override
  LangState fromJson(Map<String, dynamic> json) {
    try {
      return LangState(json['locale'], false);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic> toJson(LangState state) => {"locale": state?.locale};

  @override
  Stream<LangState> mapEventToState(LangEvent event) async* {
    yield* event.when(
      loadTranslations: () async* {
        await _loadTranslations(state.locale);
        yield LangState(state.locale, true);
      },
      setLocale: (locale) async* {
        await _loadTranslations(locale);
        yield LangState(locale, true);
      },
    );
  }

  Future _loadTranslations(String localeString) async {
    final locale = supportedLocalesHashMap[localeString];

    String jsonString = await rootBundle.loadString(
      '$assetPrefix/${locale.languageCode}-${locale.countryCode}.json',
    );

    Map<String, dynamic> jsonMap = json.decode(jsonString);
    translations = jsonMap.map((key, value) => MapEntry(key, value));
  }
}
