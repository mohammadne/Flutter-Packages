import 'package:hive/hive.dart';

import '../root_fl_hive.dart';

mixin SingleFlHive<T, A extends TypeAdapter<T>> on RootFlHive<T, A> {
  T get defaultValue => null;
  int get boxKey => 0;
}
