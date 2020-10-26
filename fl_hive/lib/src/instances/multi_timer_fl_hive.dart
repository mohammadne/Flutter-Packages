import 'package:hive/hive.dart';

import '../types/timer_fl_hive.dart';

/// Preffered LocalDataSource Interface
///
/// ```dart
/// abstract class LocalDataSourceInterface<T, A extends TypeAdapter<T>> {
///   A get adaptor;
///
///   String get boxName;
///
///   Future<void> save(dynamic key, T value);
///
///   Future<Iterable<T>> get values;
///
///   Future<Stream<Iterable<T>>> valuesStream();
/// }
/// ```
abstract class MultiTimerFlHive<T, A extends TypeAdapter<T>>
    extends TimerFlHive<T, A> {
  Future<void> save(dynamic key, T value) => put(key, value);
  Future<Iterable<T>> get values => getAll();
}
