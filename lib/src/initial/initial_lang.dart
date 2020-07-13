import 'package:freezed_annotation/freezed_annotation.dart';

part 'initial_lang.freezed.dart';

@freezed
abstract class InitialLang with _$InitialLang {
  //TODO : adding systemLocale ability
  const factory InitialLang.firstItem() = FirstItem;
  const factory InitialLang.preferedLocale(String locale) = PreferedLocale;
}
