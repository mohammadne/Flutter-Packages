import 'package:hive/hive.dart';

abstract class RootFlHive<T, A extends TypeAdapter<T>> {
  String get boxName;
  A get adaptor;

  Box<T> box;
}
