import 'package:hive/hive.dart';

import '../mixins/single_fl_hive.dart';
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
///   T get value;
///
///   Stream<T> valueStream();
/// }
/// ```
abstract class SingleNormalFlHive<T, A extends TypeAdapter<T>>
    extends NormalFlHive<T, A> with SingleFlHive<T, A> {
  void save(T value) => put(boxKey, value);
  T get value => get(boxKey);
}
