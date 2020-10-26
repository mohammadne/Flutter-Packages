import 'dart:async';

import 'package:fl_hive/src/root_fl_hive.dart';
import 'package:hive/hive.dart';

abstract class NormalFlHive<T, A extends TypeAdapter<T>>
    extends RootFlHive<T, A> {
  Completer<void> _initCompleter;

  Future<void> initialize() async {
    if (_initCompleter != null) return _initCompleter.future;
    _initCompleter = Completer();

    Hive.openBox<T>(boxName)
        .then((box) => box = box)
        .then((value) => _initCompleter.complete());

    return _initCompleter.future;
  }

  @override
  void put(dynamic key, T value) => box.put(boxName, value);

  @override
  T get(dynamic key, {T defaultValue}) =>
      box.get(boxName, defaultValue: defaultValue);

  @override
  Iterable<T> getAll() => box.values;

  @override
  Stream<Iterable<T>> valuesStream() => Stream.castFrom<dynamic, Iterable<T>>(
      box.watch().map((event) => event.value));
}
