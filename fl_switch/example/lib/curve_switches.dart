import 'package:fl_switch/fl_switch.dart';
import 'package:flutter/material.dart';

class CurveSwitches extends StatelessWidget {
  final ValueNotifier<bool> _curve1ValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _curve2ValueNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlSwitch(
              value: _curve1ValueNotifier.value,
              onTap: (val) => _curve1ValueNotifier.value = val,
            ).curve1(),
          ],
        ),
      ],
    );
  }
}
