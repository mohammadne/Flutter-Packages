import 'dart:math' as math;

import 'package:flutter/material.dart';

class CurvePainterNew extends CustomPainter {
  const CurvePainterNew({
    @required this.color,
    @required this.sweepAngle,
    @required this.thickness,
  });

  final Color color;
  final double sweepAngle;
  final double thickness;

  @override
  void paint(Canvas canvas, Size size) {
    final startAngle = 0.5 * (math.pi - sweepAngle);

    final outerRadius = size.height;
    final innerRadius = size.height - thickness;

    final baseLineRadius = (outerRadius + innerRadius) / 2;

    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = thickness;

    final path = Path()
      ..addArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height),
          radius: outerRadius,
        ),
        math.pi + startAngle,
        sweepAngle,
      )
      ..addArc(
        Rect.fromCircle(
          center: Offset(
            size.width / 2 + baseLineRadius * math.cos(startAngle),
            size.height - baseLineRadius * math.sin(startAngle),
          ),
          radius: 0.5 * thickness,
        ),
        -startAngle,
        math.pi,
      )
      ..addArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height),
          radius: innerRadius,
        ),
        math.pi + startAngle,
        sweepAngle,
      )
      ..addArc(
        Rect.fromCircle(
          center: Offset(
            size.width / 2 - baseLineRadius * math.cos(startAngle),
            size.height - baseLineRadius * math.sin(startAngle),
          ),
          radius: 0.5 * thickness,
        ),
        startAngle,
        math.pi,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}

class CurvePainter extends CustomPainter {
  final Color color;
  final sweepAngle;
  final diameterFactor;
  final spacingFactor;

  CurvePainter({
    @required this.color,
    @required this.sweepAngle,
    @required this.diameterFactor,
    @required this.spacingFactor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final startAngle = 0.5 * (math.pi - sweepAngle);
    final outerRadius = size.height * (1 - spacingFactor);
    final innerRadius = size.height * (1 - spacingFactor - diameterFactor);

    final baseLineRadius =
        size.height * (1 - spacingFactor - 0.5 * diameterFactor);

    Paint paint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke;
    // ..strokeWidth = size.height * diameterFactor;

    final path = Path()
      ..addArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height),
          radius: outerRadius,
        ),
        math.pi + startAngle,
        sweepAngle,
      )
      ..addArc(
        Rect.fromCircle(
          center: Offset(
            size.width / 2 + baseLineRadius * math.cos(startAngle),
            size.height - baseLineRadius * math.sin(startAngle),
          ),
          radius: size.height * 0.5 * diameterFactor,
        ),
        -startAngle,
        math.pi,
      )
      ..addArc(
        Rect.fromCircle(
          center: Offset(size.width / 2, size.height),
          radius: innerRadius,
        ),
        math.pi + startAngle,
        sweepAngle,
      )
      ..addArc(
        Rect.fromCircle(
          center: Offset(
            size.width / 2 - baseLineRadius * math.cos(startAngle),
            size.height - baseLineRadius * math.sin(startAngle),
          ),
          radius: size.height * 0.5 * diameterFactor,
        ),
        startAngle,
        math.pi,
      );

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
