import 'dart:async';

import 'package:async/async.dart';
import 'package:fl_hive/src/root_fl_hive.dart';
import 'package:hive/hive.dart';

abstract class TimerFlHive<T, A extends TypeAdapter<T>>
    extends RootFlHive<T, A> {
  CancelableOperation _cancelableOperation;

  // await Hive.openBox<T>(boxName).then((box) => this.box = box);

  Future<void> put(dynamic key, T value) async {
    box.put(boxName, value);
  }

  @override
  Future<T> get(dynamic key, {T defaultValue}) async {
    return box.get(boxName, defaultValue: defaultValue);
  }

  @override
  Future<Iterable<T>> getAll() async {
    return box.values;
  }

  @override
  Future<Stream<Iterable<T>>> valuesStream() async {
    return Stream.castFrom<dynamic, Iterable<T>>(
        box.watch().map((event) => event.value));
  }

  Future<void> close() async {
    await box.close();
  }
}
