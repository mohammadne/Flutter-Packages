import 'package:flutter/material.dart';
import 'package:fl_switch/fl_switch.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  final ValueNotifier<bool> _lineValueNotifier = ValueNotifier(false);
  final ValueNotifier<bool> _stretchy1ValueNotifier = ValueNotifier(false);

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
            builder: (_, value, __) => FlSwitch.line(
              value: value,
              onTap: (val) => _lineValueNotifier.value = val,
            ),
          ),
          SizedBox(height: 30),
          ValueListenableBuilder(
            valueListenable: _stretchy1ValueNotifier,
            builder: (_, value, __) => FlSwitch.stretchy1(
              value: value,
              onTap: (val) => _lineValueNotifier.value = val,
            ),
          ),
        ],
      ),
    );
  }
}
