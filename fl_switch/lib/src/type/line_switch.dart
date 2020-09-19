import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class LineSwitch extends StatelessWidget {
  const LineSwitch({
    @required this.value,
    @required this.onTap,
    this.activeColor = const Color(0xff787),
    this.inActiveColor = const Color(0xff787),
  });

  final bool value;

  final ValueChanged<bool> onTap;

  final Color activeColor;
  final Color inActiveColor;

  @override
  Widget build(BuildContext context) {
    final duration = 200;
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8),
      child: GestureDetector(
        onTap: () => onTap(!value),
        child: Container(
          width: 40,
          height: 12,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              AnimatedContainer(
                duration: Duration(milliseconds: duration),
                color: value ? activeColor : inActiveColor,
                height: 1,
                width: 30,
              ),
              AnimatedAlign(
                duration: Duration(milliseconds: duration),
                alignment: value ? Alignment.centerRight : Alignment.centerLeft,
                child: AnimatedContainer(
                  duration: Duration(milliseconds: duration),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: value ? activeColor : inActiveColor,
                  ),
                  height: 12,
                  width: 12,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
