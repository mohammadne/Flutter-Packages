import 'package:flutter/material.dart';

class RoundedContainer extends StatelessWidget {
  const RoundedContainer({
    Key key,
    @required this.color,
    @required this.width,
    @required this.height,
    this.margin = 0,
    this.circleChild,
  }) : super(key: key);

  final Color color;
  final double margin;
  final double width;
  final double height;
  final Widget circleChild;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: margin * 1.5,
        vertical: margin,
      ),
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(1000),
        ),
        child: circleChild == null ? null : Center(child: circleChild),
      ),
    );
  }
}
