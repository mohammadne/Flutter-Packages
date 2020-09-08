import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_lang.freezed.dart';

@freezed
abstract class InitialLang with _$InitialLang {
  const factory InitialLang.system() = _System;
  const factory InitialLang.preferedLocale(String locale) = _PreferedLocale;
}
