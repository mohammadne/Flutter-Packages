import 'package:hive/hive.dart';

abstract class RootFlHive<T, A extends TypeAdapter<T>> {
  RootFlHive() {
    if (adaptor != null) Hive.registerAdapter(adaptor);
  }

  A get adaptor;
  String get boxName;

  Box<T> box;

  put(dynamic key, T value);
  get(dynamic key, {T defaultValue});
  getAll();

  valuesStream();
}
