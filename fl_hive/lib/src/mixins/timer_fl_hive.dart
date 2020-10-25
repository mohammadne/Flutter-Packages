import 'dart:async';

import 'package:fl_hive/src/root_fl_hive.dart';
import 'package:hive/hive.dart';

mixin TimerFlHive<T, A extends TypeAdapter<T>> on RootFlHive<T, A> {
  Future<void> initialize() async {
    if (adaptor != null) Hive.registerAdapter(adaptor);
    await Hive.openBox<T>(boxName).then((box) => this.box = box);
  }
}
