import 'package:fl_switch/src/type/line_switch.dart';
import 'package:fl_switch/src/type/stretchy1.dart';
import 'package:flutter/material.dart';

class FlSwitch {
  static Widget line({
    @required bool value,
    @required ValueChanged<bool> onTap,
  }) =>
      LineSwitch(
        value: value,
        onTap: onTap,
      );

  static Widget stretchy1({
    @required bool value,
    @required ValueChanged<bool> onTap,
  }) =>
      Stretchy1(
        value: value,
        onTap: onTap,
      );
}
