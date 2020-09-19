import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LineSwitch extends StatelessWidget {
  const LineSwitch({
    @required this.value,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 270),
    this.curve = Curves.linear,
    this.activeColor = const Color(0xff00cc00),
    this.inActiveColor = const Color(0xffC0C0C0),
    this.size = 25,
  });

  final bool value;

  final ValueChanged<bool> onTap;

  final Duration duration;
  final Curve curve;

  final Color activeColor;
  final Color inActiveColor;

  final double size;

  @override
  Widget build(BuildContext context) {
    final height = size;
    final width = size * 2;

    final lineHeight = size * 0.05;

    final circleSize = size * 0.5;

    return GestureDetector(
      onTap: () => onTap(!value),
      child: Container(
        height: height,
        width: width,
        color: Colors.transparent,
        margin: EdgeInsets.symmetric(vertical: 60),
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            AnimatedContainer(
              duration: duration,
              curve: curve,
              color: value ? activeColor : inActiveColor,
              height: lineHeight,
              width: width,
            ),
            Container(
              width: width + circleSize,
              child: AnimatedAlign(
                duration: duration,
                curve: curve,
                alignment: value ? Alignment.centerRight : Alignment.centerLeft,
                child: AnimatedContainer(
                  duration: duration,
                  curve: curve,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: value ? activeColor : inActiveColor,
                  ),
                  height: circleSize,
                  width: circleSize,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
