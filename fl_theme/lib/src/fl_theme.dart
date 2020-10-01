import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:hive/hive.dart';

import 'dao/theme_brightness_dao.dart';
import 'dao/theme_palette_dao.dart';
import 'dao/theme_state_dao.dart';
import 'types/theme_brightness.dart';
import 'types/theme_palette.dart';
import 'types/theme_state.dart';

abstract class IFlTheme {
  Future<void> initialize();
  ThemeState get initialThemeState;

  ThemeState get themeState;
  Stream<ThemeState> get themeStateStream;

  Future<void> setTheme(ThemeState themeState);
}

class FlTheme implements IFlTheme {
  FlTheme._();
  factory FlTheme() => instance;
  static FlTheme instance = FlTheme._();

  Completer<void> _initCompleter;

  static const String _themeStateBoxKey = 'theme_state_key';
  static const int _themeStateBoxIndex = 0;
  Box<ThemeStateDao> _themeStateBox;

  BehaviorSubject<ThemeState> _themeStateSubj;

  @override
  Future<void> initialize() async {
    if (_initCompleter != null) return _initCompleter.future;
    _initCompleter = Completer();

    Hive.registerAdapter(ThemeBrightnessDaoAdapter());
    Hive.registerAdapter(ThemePaletteDaoAdapter());
    Hive.registerAdapter(ThemeStateDaoAdapter());

    Hive.openBox<ThemeStateDao>(_themeStateBoxKey)
        .then((box) => _themeStateBox = box)
        .then((_) => _themeStateSubj = BehaviorSubject.seeded(
              _themeStateBox.isEmpty
                  ? initialThemeState
                  : _themeStateBox.getAt(_themeStateBoxIndex).toThemeState(),
            ))
        .then((_) => _initCompleter.complete());

    return _initCompleter.future;
  }

  @override
  ThemeState get initialThemeState => ThemeState(
        brightness: ThemeBrightness.light(),
        scheme: ThemePalette.orange(),
      );

  @override
  ThemeState get themeState => _themeStateSubj?.value;

  @override
  Stream<ThemeState> get themeStateStream => _themeStateSubj?.stream;

  @override
  Future<void> setTheme(ThemeState themeState) async {
    _themeStateSubj.add(themeState);
    _themeStateBox.putAt(_themeStateBoxIndex, themeState.toThemeStateDao());
  }

  close() {
    _themeStateSubj.close();
    _themeStateBox.close();
  }
}
