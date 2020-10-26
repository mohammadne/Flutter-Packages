import 'package:hive/hive.dart';

import '../types/normal_fl_hive.dart';

/// Preffered LocalDataSource Interface
///
/// ```dart
/// abstract class LocalDataSourceInterface<T, A extends TypeAdapter<T>> {
///   Future<void> initialize();
///
///   Iterable<T> get values;
///
///   void save(dynamic key, T value);
///
///   Stream<Iterable<T>> get streamValues;
/// }
/// ```
abstract class MultiNormalFlHive<T, A extends TypeAdapter<T>>
    extends NormalFlHive<T, A> {
  void save(dynamic key, T value) => put(key, value);
  Iterable<T> get values => getAll();
  Stream<Iterable<T>> get streamValues => valuesStream();
}
