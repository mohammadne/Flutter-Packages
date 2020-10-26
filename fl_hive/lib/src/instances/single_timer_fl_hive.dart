import 'package:hive/hive.dart';

import '../mixins/single_fl_hive.dart';
import '../types/timer_fl_hive.dart';

abstract class SingleTimerFlHive<T, A extends TypeAdapter<T>>
    extends TimerFlHive<T, A> with SingleFlHive<T, A> {
  Future<void> save(T value) => put(boxKey, value);
  Future<T> get value => get(boxKey);
}
