import 'package:flutter/material.dart';
import 'package:fl_switch/fl_switch.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  final ValueNotifier<bool> _lineValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _stretchy1ValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _stretchy2ValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _stretchy3ValueNotifier = ValueNotifier(false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(height: 30),
          ValueListenableBuilder(
            valueListenable: _lineValueNotifier,
            builder: (_, value, __) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlSwitch(
                  value: value,
                  onTap: (val) => _lineValueNotifier.value = val,
                ).line(),
                Text(value.toString()),
              ],
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlSwitch(
                value: _stretchy1ValueNotifier.value,
                onTap: (val) => _stretchy1ValueNotifier.value = val,
              ).stretchy1(),
              ValueListenableBuilder(
                valueListenable: _stretchy1ValueNotifier,
                builder: (_, val, __) => Text(val.toString()),
              ),
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
              ValueListenableBuilder(
                valueListenable: _stretchy2ValueNotifier,
                builder: (_, value, __) => Text(value.toString()),
              ),
            ],
          ),
          SizedBox(height: 30),
          ValueListenableBuilder(
            valueListenable: _stretchy3ValueNotifier,
            builder: (_, value, __) => Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FlSwitch(
                  value: value,
                  onTap: (val) => _stretchy3ValueNotifier.value = val,
                ).stretchy3(),
                Text(value.toString()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
