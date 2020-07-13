part of 'lang_bloc.dart';

@freezed
abstract class LangState with _$LangState {
  factory LangState(String locale, bool isLoaded) = _LangState;
}
