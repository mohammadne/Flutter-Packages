import 'package:fl_switch/src/type/common/circle_container.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class Stretchy3 extends StatefulWidget {
  const Stretchy3({
    @required this.initValue,
    @required this.onTap,
    this.duration = const Duration(milliseconds: 1000),
    this.curve = Curves.easeOutQuint,
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
  _Stretchy3State createState() => _Stretchy3State();
}

class _Stretchy3State extends State<Stretchy3> with TickerProviderStateMixin {
  AnimationController widthAnimController;
  Animation<double> switchAnimWidth;

  AnimationController colorAnimController;
  Animation<Color> switchAnimColorInActive;
  Animation<Color> switchAnimColor;

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
      begin: 2.5,
      end: 1.0,
    ).animate(CurvedAnimation(
      parent: widthAnimController,
      curve: widget.curve,
    ));

    ///
    colorAnimController = AnimationController(duration: duration, vsync: this)
      ..addListener(() => setState(() {}));

    switchAnimColor = ColorTween(
      begin: widget.inActiveColor,
      end: widget.activeColor,
    ).animate(CurvedAnimation(
      parent: colorAnimController,
      curve: widget.curve,
    ));
  }

  @override
  void dispose() {
    widthAnimController.dispose();
    colorAnimController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final circlesMargin = widget.size * 0.1;
    final border = 1000.0;

    return GestureDetector(
      onTap: () {
        value = !value;
        widget.onTap(value);
        widthAnimController.forward();
      },
      child: Container(
        height: widget.size,
        width: switchAnimWidth.value * widget.size,
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
              child: CircleContainer(
                size: widget.size,
                color: widget.inActiveColor,
                margin: circlesMargin,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
