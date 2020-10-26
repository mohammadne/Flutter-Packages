import 'dart:async';

import 'package:async/async.dart';
import 'package:fl_hive/src/root_fl_hive.dart';
import 'package:hive/hive.dart';

abstract class TimerFlHive<T, A extends TypeAdapter<T>>
    extends RootFlHive<T, A> {
  CancelableOperation _cancelableOperation;

  Future get _closeBox =>
      Future.delayed(Duration(seconds: 10), () => box.close());

  CancelableOperation get cancelPlan =>
      CancelableOperation.fromFuture(_closeBox);

  Future openBox() => Hive.openBox<T>(boxName).then((box) => this.box = box);

  bool get _isBoxOpen => box != null && box.isOpen;

  Future<void> put(dynamic key, T value) async {
    if (_isBoxOpen) {
      //
      await _cancelableOperation.cancel();
      _cancelableOperation = cancelPlan;
      return box.put(boxName, value);
    } else {}

    box.isOpen;
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
  Future<Stream<T>> valueStream(dynamic key) async {
    return Stream.castFrom<dynamic, T>(
        box.watch(key: key).map((event) => event.value));
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
