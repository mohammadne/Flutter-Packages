import 'package:fl_switch/src/type/line/line_switch.dart';
import 'package:fl_switch/src/type/stretchy/stretchy1.dart';
import 'package:fl_switch/src/type/stretchy/stretchy2.dart';
import 'package:flutter/material.dart';

import 'type/stretchy/stretchy3.dart';

class FlSwitch {
  FlSwitch({
    @required this.value,
    @required this.onTap,
  });

  bool value;
  ValueChanged<bool> onTap;

  Widget line() => LineSwitch(
        value: value,
        onTap: onTap,
      );

  Widget stretchy1() => Stretchy1(
        value: value,
        onTap: onTap,
      );

  Widget stretchy2() => Stretchy2(
        value: value,
        onTap: onTap,
      );

  Widget stretchy3() => Stretchy3(
        value: value,
        onTap: onTap,
      );
}
