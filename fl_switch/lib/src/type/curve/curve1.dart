import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'curve_painter.dart';

class Curve1 extends StatefulWidget {
  const Curve1({
    @required this.initValue,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 400),
    this.curve = Curves.linear,
    this.activeColor = Colors.green,
    this.inActiveColor = Colors.black,
    this.backgroundColor = const Color(0xffFFFFFF),
    this.thickness = 40,
    this.size = 300,
    this.sweepAngle = math.pi * 0.67,
    this.space = 10,
  });

  final bool initValue;

  final ValueChanged<bool> onTap;

  final Duration duration;
  final Curve curve;

  final Color activeColor;
  final Color inActiveColor;
  final Color backgroundColor;

  final double thickness;
  final double size;

  final double space;

  final double sweepAngle;

  @override
  _Curve1State createState() => _Curve1State();
}

class _Curve1State extends State<Curve1> with SingleTickerProviderStateMixin {
  AnimationController animController;
  Animation animColor;
  Animation anim;

  bool value;

  double startAngle;
  double endAngle;

  @override
  void initState() {
    super.initState();

    value = widget.initValue;

    startAngle = -widget.sweepAngle / 4;
    endAngle = widget.sweepAngle / 4;

    animController = AnimationController(
      duration: widget.duration,
      value: value ? 1 : 0,
      vsync: this,
    );

    final curveAnim = CurvedAnimation(
      parent: animController,
      curve: widget.curve,
    );

    animColor = ColorTween(
      begin: value ? widget.activeColor : widget.inActiveColor,
      end: value ? widget.inActiveColor : widget.activeColor,
    ).animate(curveAnim);

    anim = Tween<double>(
      begin: value ? endAngle : startAngle,
      end: value ? startAngle : endAngle,
    ).animate(curveAnim);
  }

  @override
  void dispose() {
    animController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        value = !value;
        widget.onTap(value);

        if (value) {
          animController.forward();
        } else {
          animController.reverse();
        }
      },
      child: Container(
        alignment: Alignment.center,
        width: widget.size,
        height: widget.size / 2,
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomPaint(
              painter: CurvePainterNew(
                color: widget.backgroundColor,
                sweepAngle: widget.sweepAngle,
                thickness: widget.thickness,
              ),
              size: Size.infinite,
            ),
            Positioned(
              left: 0,
              right: 0,
              bottom: 0,
              top: widget.space / 2,
              child: AnimatedBuilder(
                animation: animController,
                builder: (_, __) => Transform(
                  transform: Matrix4.rotationZ(anim.value), // rotate -10 deg
                  alignment:
                      FractionalOffset.bottomCenter, // set transform origin
                  child: CustomPaint(
                    painter: CurvePainterNew(
                      color: animColor.value,
                      sweepAngle: widget.sweepAngle / 2,
                      thickness: widget.thickness - widget.space,
                    ),
                    size: Size.infinite,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
