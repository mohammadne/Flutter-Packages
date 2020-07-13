part of 'lang_bloc.dart';

@freezed
abstract class LangEvent with _$LangEvent {
  const factory LangEvent.loadTranslations() = _LoadTranslations;
  const factory LangEvent.setLocale(String locale) = _SetLocale;
}
