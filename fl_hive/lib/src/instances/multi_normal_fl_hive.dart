import 'package:hive/hive.dart';

import '../types/normal_fl_hive.dart';

/// Preffered LocalDataSource Interface
///
/// ```dart
/// abstract class LocalDataSourceInterface<T, A extends TypeAdapter<T>> {
///   A get adaptor;
///
///   String get boxName;
///
///   Future<void> initialize();
///
///   void save(dynamic key, T value);
///
///   Iterable<T> get values;
///
///   Stream<Iterable<T>> valuesStream();
/// }
/// ```
abstract class MultiNormalFlHive<T, A extends TypeAdapter<T>>
    extends NormalFlHive<T, A> {
  void save(dynamic key, T value) => put(key, value);
  Iterable<T> get values => getAll();
}
