import 'package:hive/hive.dart';

import '../type/multi_fl_hive.dart';
import '../mixins/timer_fl_hive.dart';

abstract class MultiTimerFlHive<T, A extends TypeAdapter<T>>
    extends MultiFlHive<T, A> with TimerFlHive<T, A> {}
