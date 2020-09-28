import 'dart:math' as math;
import 'package:flutter/material.dart';

import 'curve_painter.dart';

class Curve2 extends StatefulWidget {
  const Curve2({
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
  _Curve2State createState() => _Curve2State();
}

class _Curve2State extends State<Curve2> with SingleTickerProviderStateMixin {
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
/*
class Curve2 extends StatefulWidget {
  const Curve2({
    Key key,
    this.initValue,
    this.onTap,
    this.duration,
    this.curve,
    this.activeColor,
    this.inActiveColor,
    this.size,
  }) : super(key: key);

  final bool initValue;

  final ValueChanged<bool> onTap;

  final Duration duration;
  final Curve curve;

  final Color activeColor;
  final Color inActiveColor;

  final double size;

  @override
  _Curve2State createState() => _Curve2State();
}

class _Curve2State extends State<Curve2> with SingleTickerProviderStateMixin {
  AnimationController _controller;
  int keyState = 0;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(milliseconds: 500),
      vsync: this,
      lowerBound: -0.65,
      upperBound: 0.65,
      value: 0.0,
    )..addListener(() {
        if (_controller.isCompleted || _controller.isDismissed) setState(() {});
      });
  }

  int unitStepFunction(double val) => val > 0 ? 1 : 0;
  ValueNotifier<bool> enableCustomCurve = ValueNotifier(true);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (_, constrainst) => Center(
          child: Container(
            alignment: Alignment.center,
            width: constrainst.maxWidth,
            height: constrainst.maxWidth / 2,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                CustomPaint(
                  painter: CurvePainter(
                    color: Color(0xFFECECEC),
                    halfCircleRatio: 0.67,
                    diameterFactor: 2.6 / 10,
                    spacingFactor: 1.6 / 10,
                  ),
                  size: Size.infinite,
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (_, __) => Transform(
                    transform: new Matrix4.rotationZ(
                      _controller.value,
                    ),
                    alignment: FractionalOffset.bottomCenter,
                    child: CustomPaint(
                      painter: CurvePainter(
                        color: Theme.of(context).colorScheme.primary,
                        halfCircleRatio: 0.25,
                        diameterFactor: 2 / 10,
                        spacingFactor: 1.85 / 10,
                      ),
                      size: Size.infinite,
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (_, __) => ValueListenableBuilder(
                    valueListenable: enableCustomCurve,
                    builder: (_, enable, __) => Transform(
                      transform: new Matrix4.rotationZ(
                        enable
                            ? -0.65 +
                                math.exp(_controller.value) /
                                    math.exp(0.65) *
                                    unitStepFunction(
                                      _controller.value,
                                    ) *
                                    math.pow(
                                      0.35 + _controller.value,
                                      3,
                                    ) *
                                    1.3
                            : _controller.value,
                      ),
                      alignment: FractionalOffset.bottomCenter,
                      child: CustomPaint(
                        painter: CurvePainter(
                          color: Theme.of(context).colorScheme.primary,
                          halfCircleRatio: 0.25,
                          diameterFactor: 2 / 10,
                          spacingFactor: 1.85 / 10,
                        ),
                        size: Size.infinite,
                      ),
                    ),
                  ),
                ),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (_, __) => ValueListenableBuilder(
                    valueListenable: enableCustomCurve,
                    builder: (_, enable, __) => Transform(
                      transform: new Matrix4.rotationZ(
                        enable
                            ? 0.65 -
                                math.exp(-_controller.value) /
                                    math.exp(0.65) *
                                    unitStepFunction(
                                      -_controller.value,
                                    ) *
                                    math.pow(
                                      0.35 - _controller.value,
                                      3,
                                    ) *
                                    1.3
                            : _controller.value,
                      ),
                      alignment: FractionalOffset.bottomCenter,
                      child: CustomPaint(
                        painter: CurvePainter(
                          color: Theme.of(context).colorScheme.primary,
                          halfCircleRatio: 0.25,
                          diameterFactor: 2 / 10,
                          spacingFactor: 1.85 / 10,
                        ),
                        size: Size.infinite,
                      ),
                    ),
                  ),
                ),
                Container(
                  height: double.infinity,
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: AnimatedDefaultTextStyle(
                                duration: Duration(milliseconds: 200),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: _controller.value == 0.65
                                          ? Theme.of(context).disabledColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .background,
                                    ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Transform.translate(
                                      offset: Offset(-20, 20),
                                      child: Transform.rotate(
                                        angle: -1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Text('Love'),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset(5, -10),
                                      child: Transform.rotate(
                                        angle: -0.7,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Text('In'),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset(45, -30),
                                      child: Transform.rotate(
                                        angle: -0.4,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Text('Flutter'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (keyState == 0) {
                                  keyState = 1;
                                  enableCustomCurve.value = true;
                                  _controller.animateTo(0.65);
                                } else if (keyState == 1) {
                                  keyState = 0;
                                  enableCustomCurve.value = true;
                                  _controller.animateTo(0.0);
                                } else {
                                  keyState = 1;
                                  enableCustomCurve.value = false;
                                  _controller.animateTo(0.65);
                                }
                              });
                            },
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.transparent,
                          child: GestureDetector(
                            child: Container(
                              height: double.infinity,
                              width: double.infinity,
                              color: Colors.transparent,
                              child: AnimatedDefaultTextStyle(
                                duration: Duration(milliseconds: 200),
                                style: Theme.of(context)
                                    .textTheme
                                    .subtitle1
                                    .copyWith(
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                      color: _controller.value == -0.65
                                          ? Theme.of(context).disabledColor
                                          : Theme.of(context)
                                              .colorScheme
                                              .background,
                                    ),
                                child: Stack(
                                  fit: StackFit.expand,
                                  children: <Widget>[
                                    Transform.translate(
                                      offset: Offset(20, 20),
                                      child: Transform.rotate(
                                        angle: 1,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Text('Love'),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset(-5, -10),
                                      child: Transform.rotate(
                                        angle: 0.7,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Text('In'),
                                        ),
                                      ),
                                    ),
                                    Transform.translate(
                                      offset: Offset(-45, -35),
                                      child: Transform.rotate(
                                        angle: 0.4,
                                        child: Container(
                                          alignment: Alignment.center,
                                          color: Colors.transparent,
                                          child: Text('Flutter'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            onTap: () {
                              setState(() {
                                if (keyState == 0) {
                                  keyState = 2;
                                  enableCustomCurve.value = true;
                                  _controller.animateTo(-0.65);
                                } else if (keyState == 1) {
                                  keyState = 2;
                                  enableCustomCurve.value = false;
                                  _controller.animateTo(-0.65);
                                } else {
                                  keyState = 0;
                                  enableCustomCurve.value = true;
                                  _controller.animateTo(0.0);
                                }
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
*/
