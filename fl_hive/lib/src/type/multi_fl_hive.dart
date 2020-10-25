import 'package:hive/hive.dart';
import '../root_fl_hive.dart';

abstract class MultiFlHive<T, A extends TypeAdapter<T>>
    extends RootFlHive<T, A> {
  void save(key, T val) => box.put(key, val);

  Iterable<T> get daos => box.values;
  T dao(key) => box.get(key);

  Stream<Iterable<T>> get daosStream => Stream.castFrom<dynamic, Iterable<T>>(
      box.watch().map((event) => event.value));
}
