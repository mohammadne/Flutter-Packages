import 'package:hive/hive.dart';

import '../mixins/single_fl_hive.dart';
import '../types/timer_fl_hive.dart';

/// Preffered LocalDataSource Interface
///
/// ```dart
/// abstract class LocalDataSourceInterface<T, A extends TypeAdapter<T>> {
///   Future<T> get value;
///
///   Future<void> save(T value);
///
///   Future<Stream<T>> get streamValue;
/// }
/// ```
abstract class SingleTimerFlHive<T, A extends TypeAdapter<T>>
    extends TimerFlHive<T, A> with SingleFlHive<T, A> {
  Future<void> save(T value) => put(boxKey, value);
  Future<T> get value => get(boxKey);
  Future<Stream<T>> get streamValue => valueStream(boxKey);
}
