import 'package:hive/hive.dart';

import '../mixins/single_fl_hive.dart';
import '../types/normal_fl_hive.dart';

abstract class SingleNormalFlHive<T, A extends TypeAdapter<T>>
    extends NormalFlHive<T, A> with SingleFlHive<T, A> {
  void save(T value) => put(boxKey, value);
  T get value => get(boxKey);
}
