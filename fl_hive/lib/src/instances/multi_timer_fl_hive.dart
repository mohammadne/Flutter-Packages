import 'package:hive/hive.dart';

import '../types/timer_fl_hive.dart';

abstract class MultiTimerFlHive<T, A extends TypeAdapter<T>>
    extends TimerFlHive<T, A> {
  Future<void> save(dynamic key, T value) => put(key, value);
  Future<Iterable<T>> get values => getAll();
}
