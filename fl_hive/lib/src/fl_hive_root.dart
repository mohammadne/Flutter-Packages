import 'package:fl_hive/src/fl_hive_normal.dart';
import 'package:hive/hive.dart';

import 'package:fl_hive/src/box_type.dart';

abstract class FlHiveRoot<T, A extends TypeAdapter<T>> {
  BoxType get boxType => BoxType.singleValue();
  T get defaultValue => null;
  String get boxName;
  A get adaptor;

  Box<T> box;
}
