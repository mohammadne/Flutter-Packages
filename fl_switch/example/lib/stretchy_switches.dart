import 'package:fl_switch/fl_switch.dart';
import 'package:flutter/material.dart';

class StretchySwitches extends StatelessWidget {
  final ValueNotifier<bool> _stretchy1ValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _stretchy2ValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _stretchy3ValueNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlSwitch(
              value: _stretchy1ValueNotifier.value,
              onTap: (val) => _stretchy1ValueNotifier.value = val,
            ).stretchy1(),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlSwitch(
              value: _stretchy2ValueNotifier.value,
              onTap: (val) => _stretchy2ValueNotifier.value = val,
            ).stretchy2(),
          ],
        ),
        SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FlSwitch(
              value: _stretchy3ValueNotifier.value,
              onTap: (val) => _stretchy3ValueNotifier.value = val,
            ).stretchy3(),
          ],
        ),
      ],
    );
  }
}
