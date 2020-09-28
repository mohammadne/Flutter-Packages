import 'package:flutter/material.dart';

import 'curve_switches.dart';
import 'stretchy_switches.dart';
import 'top_clipper.dart';

void main() => runApp(MaterialApp(home: MyApp()));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Column(
        children: [
          ClipPath(
            clipper: TopClipper(),
            child: Container(
              height: 200,
              width: width,
              color: Color(0xff262e59),
              child: Center(
                child: Text(
                  'FLSwitch Library',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Expanded(
            child: PageView(
              children: [
                StretchySwitches(),
                CurveSwitches(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
