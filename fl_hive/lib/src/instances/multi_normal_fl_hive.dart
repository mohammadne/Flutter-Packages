import 'package:hive/hive.dart';

import '../type/multi_fl_hive.dart';
import '../mixins/normal_fl_hive.dart';

abstract class MultiNormalFlHive<T, A extends TypeAdapter<T>>
    extends MultiFlHive<T, A> with NormalFlHive<T, A> {}
