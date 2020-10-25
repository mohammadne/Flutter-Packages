import 'package:hive/hive.dart';

import '../type/single_fl_hive.dart';
import '../mixins/normal_fl_hive.dart';

abstract class SingleNormalFlHive<T, A extends TypeAdapter<T>>
    extends SingleFlHive<T, A> with NormalFlHive<T, A> {}
