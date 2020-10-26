import 'package:hive/hive.dart';

import '../types/normal_fl_hive.dart';

abstract class MultiNormalFlHive<T, A extends TypeAdapter<T>>
    extends NormalFlHive<T, A> {
  void save(dynamic key, T value) => put(key, value);
  Iterable<T> get values => getAll();
}
