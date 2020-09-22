import 'package:fl_switch/src/type/common/circle_container.dart';
import 'package:fl_switch/src/type/common/rounded_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Stretchy2 extends StatefulWidget {
  const Stretchy2({
    @required this.initValue,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 800),
    this.curve = Curves.ease,
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
  _Stretchy2State createState() => _Stretchy2State();
}

class _Stretchy2State extends State<Stretchy2> with TickerProviderStateMixin {
  AnimationController widthAnimController;
  Animation<double> switchAnimWidth;

  AnimationController colorAnimController;
  Animation<Color> switchAnimColorInActive;
  Animation<Color> switchAnimColorActive;

  bool value;
  Alignment alignment;

  void setAlignment() =>
      alignment = value ? Alignment.centerRight : Alignment.centerLeft;

  @override
  void initState() {
    super.initState();
    value = widget.initValue;
    setAlignment();

    final duration =
        Duration(milliseconds: widget.duration.inMilliseconds ~/ 2);

    ///
    widthAnimController = AnimationController(duration: duration, vsync: this)
      ..addListener(() => setState(() {}))
      ..addStatusListener((status) {
        if (status == AnimationStatus.completed) {
          widthAnimController.reverse();
          setAlignment();
          if (value)
            colorAnimController.forward();
          else
            colorAnimController.reverse();
        }
      });

    switchAnimWidth = Tween<double>(
      begin: 1.0,
      end: 2.5,
    ).animate(CurvedAnimation(
      parent: widthAnimController,
      curve: widget.curve,
    ));

    ///
    colorAnimController = AnimationController(duration: duration, vsync: this)
      ..addListener(() => setState(() {}));

    final colorCurvedAnim = CurvedAnimation(
      parent: colorAnimController,
      curve: widget.curve,
    );

    switchAnimColorActive = ColorTween(
      begin: widget.inActiveColor,
      end: widget.activeColor,
    ).animate(colorCurvedAnim);

    switchAnimColorInActive = ColorTween(
      begin: widget.activeColor,
      end: widget.inActiveColor,
    ).animate(colorCurvedAnim);
  }

  @override
  void dispose() {
    widthAnimController.dispose();
    colorAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final width = widget.size * 2.5;
    final height = widget.size;
    final border = 1000.0;

    return GestureDetector(
      onTap: () {
        value = !value;
        widget.onTap(value);
        widthAnimController.forward();
      },
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: widget.activeColor,
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
            Align(
              alignment: alignment,
              child: RoundedContainer(
                height: widget.size,
                color: widget.inActiveColor,
                width: switchAnimWidth.value * widget.size,
              ),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CircleContainer(
                size: widget.size,
                color: Colors.transparent,
                margin: 0,
                innerChild: Container(
                  height: widget.size * 0.45,
                  width: widget.size * 0.15,
                  decoration: BoxDecoration(
                    color: switchAnimColorActive.value,
                    borderRadius: BorderRadius.circular(border),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: CircleContainer(
                size: widget.size,
                color: Colors.transparent,
                margin: 0,
                innerChild: Container(
                  height: widget.size * 0.2,
                  decoration: BoxDecoration(
                    color: switchAnimColorInActive.value,
                    shape: BoxShape.circle,
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
