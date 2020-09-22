import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  const CircleContainer({
    Key key,
    @required this.size,
    @required this.color,
    @required this.margin,
    this.innerChild,
  }) : super(key: key);

  final Color color;

  final double size;

  final double margin;

  final Widget innerChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.circle,
      ),
      margin: EdgeInsets.all(margin),
      child: innerChild == null ? null : Center(child: innerChild),
    );
  }
}
