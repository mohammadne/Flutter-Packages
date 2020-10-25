import 'dart:async';

import 'package:fl_hive/src/fl_hive_root.dart';
import 'package:hive/hive.dart';

abstract class FlHiveNormal<T, A extends TypeAdapter<T>>
    extends FlHiveRoot<T, A> {
  Completer<void> _initCompleter;

  Future<void> initialize() async {
    if (_initCompleter != null) return _initCompleter.future;
    _initCompleter = Completer();

    if (adaptor != null) Hive.registerAdapter(adaptor);

    Hive.openBox<T>(boxName)
        .then((box) => super.box = box)
        .then((value) => _initCompleter.complete());

    return _initCompleter.future;
  }

  // T _assetion<T>(T job) => _initCompleter == null ? throw Exception : job;

  void save(T val) => box.put(_key, val);

  T get dao => box.get(key, defaultValue: defaultValue);

  Stream<T> get daoStream => Stream.castFrom<BoxEvent, T>(box.watch(key: _key));
}
