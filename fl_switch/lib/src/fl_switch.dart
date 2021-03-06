import 'package:fl_switch/src/type/line/line1.dart';
import 'package:fl_switch/src/type/stretchy/stretchy1.dart';
import 'package:fl_switch/src/type/stretchy/stretchy2.dart';
import 'package:flutter/material.dart';

import 'type/curve/curve1.dart';
import 'type/curve/curve2.dart';
import 'type/stretchy/stretchy3.dart';

class FlSwitch {
  const FlSwitch({
    @required this.value,
    @required this.onTap,
  });

  final bool value;
  final ValueChanged<bool> onTap;

  Widget line() => Line1(
        value: value,
        onTap: onTap,
      );

  Widget stretchy1() => Stretchy1(
        initValue: value,
        onTap: onTap,
      );

  Widget stretchy2() => Stretchy2(
        initValue: value,
        onTap: onTap,
      );

  Widget stretchy3() => Stretchy3(
        initValue: value,
        onTap: onTap,
      );

  Widget curve1() => Curve1(
        initValue: value,
        onTap: onTap,
      );

  Widget curve2() => Curve2(
        initValue: value,
        onTap: onTap,
      );
}
