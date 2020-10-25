import 'package:fl_hive/src/fl_hive_root.dart';
import 'package:hive/hive.dart';

abstract class FlHiveTimer<T, A extends TypeAdapter<T>>
    extends FlHiveRoot<T, A> {}
