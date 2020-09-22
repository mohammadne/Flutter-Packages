import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../common/animated_circle_container.dart';

class Stretchy2 extends StatelessWidget {
  const Stretchy2({
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

    return Row(
      children: [
        GestureDetector(
          onTap: () => onTap(!value),
          child: Container(
            height: height,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(size * 10),
            ),
            child: Stack(
              children: [
                RoundedAnimatedCircle(
                  curve: curve,
                  duration: duration,
                  size: size,
                  factor: 2.5,
                  color: activeColor,
                  margin: 0,
                ),

                // Movable Widget
                AnimatedAlign(
                  curve: curve,
                  duration: duration,
                  alignment:
                      value ? Alignment.centerRight : Alignment.centerLeft,
                  child: RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: value ? 1 : 2.5,
                    color: inActiveColor,
                    margin: 0,
                  ),
                ),

                AnimatedAlign(
                  curve: curve,
                  duration: duration,
                  alignment:
                      value ? Alignment.centerRight : Alignment.centerLeft,
                  child: RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: value ? 1 : 2.5,
                    color: inActiveColor,
                    margin: 0,
                  ),
                ),

                Align(
                  alignment: Alignment.centerRight,
                  child: RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: 1,
                    color: Colors.transparent,
                    margin: 0,
                    circleChild: AnimatedContainer(
                      curve: curve,
                      duration: duration,
                      height: size * 0.45,
                      width: size * 0.1,
                      decoration: BoxDecoration(
                        color: value ? activeColor : inActiveColor,
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RoundedAnimatedCircle(
                    curve: curve,
                    duration: duration,
                    size: size,
                    factor: 1,
                    color: Colors.transparent,
                    margin: 0,
                    circleChild: AnimatedContainer(
                      curve: curve,
                      duration: duration,
                      height: size * 0.2,
                      decoration: BoxDecoration(
                          color: !value ? activeColor : inActiveColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

/*
import 'package:fl_switch/src/type/common/circle_container.dart';
import 'package:fl_switch/src/type/common/rounded_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../common/animated_circle_container.dart';

class Stretchy1 extends StatefulWidget {
  const Stretchy1({
    @required this.initValue,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 300),
    this.curve = Curves.linear,
    this.activeColor = const Color(0xffFFFFFF),
    this.inActiveColor = const Color(0xff000000),
    this.size = 80,
  });

  final bool initValue;

  final ValueChanged<bool> onTap;

  final Duration duration;
  final Curve curve;

  final Color activeColor;
  final Color inActiveColor;

  final double size;

  @override
  _Stretchy1State createState() => _Stretchy1State();
}

class _Stretchy1State extends State<Stretchy1> with TickerProviderStateMixin {
  AnimationController scaleAnimController;
  Animation scaleAnim;

  AnimationController switchAnimController;
  Animation switchMarginAnimInActive;
  Animation switchAnimInActive;
  Animation switchMarginAnimActive;
  Animation switchAnimActive;

  bool value;

  @override
  void initState() {
    super.initState();

    /// value initializer
    value = widget.initValue;

    /// =============================================== initialize [scaleAnimController]
    scaleAnimController = AnimationController(
      duration: Duration(milliseconds: widget.duration.inMilliseconds ~/ 2),
      vsync: this,
    )
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) scaleAnimController.reverse();
      })
      ..addListener(() => setState(() {}));

    scaleAnim = Tween<double>(begin: 1.0, end: 1.05).animate(
      CurvedAnimation(
        parent: scaleAnimController,
        curve: Curves.easeInOutExpo,
      ),
    );

    /// =============================================== initialize [switchAnimController]
    switchAnimController = AnimationController(
      duration: widget.duration,
      vsync: this,
    )..addListener(() => setState(() {}));

    switchMarginAnimInActive = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: switchAnimController,
        curve: widget.curve,
      ),
    );

    switchAnimInActive = Tween<double>(begin: 2.5, end: 1.0).animate(
      CurvedAnimation(
        parent: switchAnimController,
        curve: widget.curve,
      ),
    );

    switchMarginAnimActive = Tween<double>(begin: 1.0, end: 0.0).animate(
      CurvedAnimation(
        parent: switchAnimController,
        curve: widget.curve,
      ),
    );

    switchAnimActive = Tween<double>(begin: 1.0, end: 2.5).animate(
      CurvedAnimation(
        parent: switchAnimController,
        curve: widget.curve,
      ),
    );
  }

  @override
  void dispose() {
    scaleAnimController.dispose();
    switchAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final circlesMargin = widget.size * 0.1;
    final width = widget.size * 2.5;
    final height = widget.size;
    final border = 1000.0;

    final inActiveWidget = Align(
      alignment: Alignment.centerLeft,
      child: RoundedContainer(
        height: widget.size,
        color: widget.inActiveColor,
        width: switchAnimInActive.value * widget.size,
        margin: switchMarginAnimInActive.value * circlesMargin,
      ),
    );

    final activeWidget = Align(
      alignment: Alignment.centerRight,
      child: RoundedContainer(
        height: widget.size,
        color: widget.activeColor,
        width: switchAnimActive.value * widget.size,
        margin: switchMarginAnimActive.value * circlesMargin,
      ),
    );

    return GestureDetector(
      onTap: () {
        value = !value;
        widget.onTap(value);
        scaleAnimController.forward();
        if (switchAnimController.isCompleted) {
          switchAnimController.reverse();
        } else {
          switchAnimController.forward();
        }
      },
      child: Transform.scale(
        scale: 1,
        // scale: scaleAnim.value,
        child: Container(
          height: height,
          width: width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(border),
            boxShadow: [
              BoxShadow(
                blurRadius: 10,
                spreadRadius: -2,
                color: widget.inActiveColor.withOpacity(0.5),
              ),
            ],
          ),
          child: Stack(
            children: [
              if (value) ...[
                inActiveWidget,
                activeWidget,
              ] else ...[
                activeWidget,
                inActiveWidget,
              ],
              Row(
                children: [
                  CircleContainer(
                    size: widget.size,
                    color: widget.inActiveColor,
                    margin: circlesMargin,
                  ),
                  Spacer(),
                  CircleContainer(
                    size: widget.size,
                    color: widget.activeColor,
                    margin: circlesMargin,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
*/
