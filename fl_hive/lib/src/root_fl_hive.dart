import 'dart:async';

import 'package:hive/hive.dart';

abstract class RootFlHive<T, A extends TypeAdapter<T>> {
  RootFlHive() {
    if (adaptor != null) Hive.registerAdapter(adaptor);
  }

  A get adaptor => null;
  String get boxName;

  Box<T> box;

  FutureOr<void> put(dynamic key, T value);

  FutureOr<T> get(dynamic key, {T defaultValue});
  FutureOr<Iterable<T>> getAll();

  FutureOr<Stream<T>> valueStream(dynamic key);
  FutureOr<Stream<Iterable<T>>> valuesStream();

  Future<void> dispose();
}
