import 'package:hive/hive.dart';

import '../type/single_fl_hive.dart';
import '../mixins/timer_fl_hive.dart';

abstract class SingleTimerFlHive<T, A extends TypeAdapter<T>>
    extends SingleFlHive<T, A> with TimerFlHive<T, A> {}
