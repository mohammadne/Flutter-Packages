import 'dart:async';

import 'package:async/async.dart';
import 'package:fl_hive/src/root_fl_hive.dart';
import 'package:hive/hive.dart';
import 'package:rxdart/rxdart.dart';

abstract class TimerFlHive<T, A extends TypeAdapter<T>>
    extends RootFlHive<T, A> {
  CancelableOperation _cancelableOperation;

  Future<Box<T>> _openBox() =>
      Hive.openBox<T>(boxName).then((box) => this.box = box);

  Future get _closeBox =>
      Future.delayed(Duration(seconds: 10), () => box.close());

  CancelableOperation get _cancelPlan =>
      CancelableOperation.fromFuture(_closeBox);

  bool get _isBoxOpen => box != null && box.isOpen;

  Future<void> _common() async {
    if (!_isBoxOpen) box = await _openBox();

    _cancelableOperation?.cancel();
    _cancelableOperation = _cancelPlan;
  }

  @override
  Future<void> put(dynamic key, T value) =>
      _common().then((_) => box.put(key, value));

  @override
  Future<T> get(dynamic key, {T defaultValue}) =>
      _common().then((_) => box.get(key, defaultValue: defaultValue));

  @override
  Future<Iterable<T>> getAll() => _common().then((_) => box.values);

  BehaviorSubject<T> _valueSubj;
  BehaviorSubject<Iterable<T>> _valuesSubj;

  Stream<T> _streamValueCaster(Stream<BoxEvent> stream) =>
      Stream.castFrom<dynamic, T>(stream.map((event) => event.value));

  @override
  Future<Stream<T>> valueStream(dynamic key) async {
    _valueSubj?.close();
    T value = await get(key);
    _valueSubj = BehaviorSubject.seeded(value);

    return Rx.combineLatest2<T, T, T>(
      _streamValueCaster(box.watch(key: key)),
      _valueSubj,
      (boxVal, subjVal) {
        if (boxVal != null) _valueSubj.add(boxVal);
        return _valueSubj.value;
      },
    );
  }

  Stream<Iterable<T>> _streamValuesCaster(Stream<BoxEvent> stream) =>
      Stream.castFrom<dynamic, Iterable<T>>(stream.map((event) => event.value));

  @override
  Future<Stream<Iterable<T>>> valuesStream() async {
    _valuesSubj?.close();
    Iterable<T> values = await getAll();
    _valuesSubj = BehaviorSubject.seeded(values);

    return Rx.combineLatest2<Iterable<T>, Iterable<T>, Iterable<T>>(
      _streamValuesCaster(box.watch()),
      _valuesSubj,
      (boxVals, subjVals) {
        if (boxVals != null) _valuesSubj.add(boxVals);
        return _valuesSubj.value;
      },
    );
  }

  @override
  Future<void> dispose() async {
    await box?.close();
    await _valueSubj?.close();
    await _valuesSubj?.close();
  }
}
