import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Stretchy1 extends StatelessWidget {
  const Stretchy1({
    @required this.value,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 270),
    this.curve = Curves.linear,
    this.activeColor = const Color(0xffFFFFFF),
    this.inActiveColor = const Color(0xff000000),
    this.size = 80,
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
    final width = size * 2.5;

    final circlesMargin = size * 0.1;

    return Row(
      children: [
        GestureDetector(
          onTap: () => onTap(!value),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              color: Colors.black,
              borderRadius: BorderRadius.circular(size * 10),
            ),
            child: Stack(
              children: [
                /// ACTIVE
                Align(
                  alignment: Alignment.centerRight,
                  child: _RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: value ? 1 : 2.5,
                    color: activeColor,
                    margin: circlesMargin * (value ? 1 : 0),
                  ),
                ),

                /// INACTIVE
                Align(
                  alignment: Alignment.centerLeft,
                  child: _RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: value ? 2.5 : 1,
                    color: inActiveColor,
                    margin: circlesMargin * (value ? 0 : 1),
                  ),
                ),
                Row(
                  children: [
                    _RoundedCircle(
                      size: size,
                      color: inActiveColor,
                      margin: circlesMargin,
                    ),
                    Spacer(),
                    _RoundedCircle(
                      size: size,
                      color: activeColor,
                      margin: circlesMargin,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _RoundedAnimatedCircle extends StatelessWidget {
  const _RoundedAnimatedCircle({
    Key key,
    @required this.color,
    @required this.margin,
    @required this.size,
    @required this.factor,
    @required this.duration,
    @required this.curve,
  }) : super(key: key);

  final Color color;
  final double margin;
  final double size;
  final double factor;
  final Duration duration;
  final Curve curve;

  @override
  Widget build(BuildContext context) {
    return AnimatedPadding(
      duration: duration,
      curve: curve,
      padding: EdgeInsets.symmetric(
        horizontal: margin * 1.5,
        vertical: margin,
      ),
      child: AnimatedContainer(
        duration: duration,
        curve: curve,
        height: size,
        width: size * factor - (factor == 1 ? margin * 2 : 0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(1000),
        ),
      ),
    );
  }
}

class _RoundedCircle extends StatelessWidget {
  const _RoundedCircle({
    Key key,
    @required this.color,
    @required this.margin,
    @required this.size,
  }) : super(key: key);

  final Color color;
  final double margin;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.symmetric(
        horizontal: margin * 0.5,
        vertical: margin,
      ),
    );
  }
}
