import 'package:flutter/material.dart';

class RoundedAnimatedCircle extends StatelessWidget {
  const RoundedAnimatedCircle({
    Key key,
    @required this.color,
    @required this.margin,
    @required this.size,
    @required this.factor,
    @required this.duration,
    @required this.curve,
    this.circleChild,
  }) : super(key: key);

  final Color color;
  final double margin;
  final double size;
  final double factor;
  final Duration duration;
  final Curve curve;
  final Widget circleChild;

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
        child: circleChild == null ? null : Center(child: circleChild),
      ),
    );
  }
}
