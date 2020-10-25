import 'package:hive/hive.dart';

import '../root_fl_hive.dart';

abstract class SingleFlHive<T, A extends TypeAdapter<T>>
    extends RootFlHive<T, A> {
  T get defaultValue => null;
  int get boxKey => 0;

  void save(T val) => box.putAt(boxKey, val);
  T get dao => box.get(boxKey, defaultValue: defaultValue);

  Stream<T> get daoStream =>
      Stream.castFrom<BoxEvent, T>(box.watch(key: boxKey));
}
