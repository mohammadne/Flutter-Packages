import 'dart:math' as math;

import 'package:flutter/material.dart';

class ArcPainter extends CustomPainter {
  final Color color;
  final halfCircleRatio;
  final diameterFactor;
  final spacingFactor;

  ArcPainter({
    @required this.color,
    @required this.halfCircleRatio,
    @required this.diameterFactor,
    @required this.spacingFactor,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final sweepAngle = math.pi * halfCircleRatio;
    final startAngle = 0.5 * (math.pi - sweepAngle);
    final outerRadius = size.height * (1 - spacingFactor);
    final innerRadius = size.height * (1 - spacingFactor - diameterFactor);

    final baseLineRadius =
        size.height * (1 - spacingFactor - 0.5 * diameterFactor);

    Paint paint = Paint()
      ..color = color
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.height * diameterFactor;
    final path = Path();

    path.addArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height),
        radius: outerRadius,
      ),
      math.pi + startAngle,
      sweepAngle,
    );

    path.addArc(
      Rect.fromCircle(
        center: Offset(
          size.width / 2 + baseLineRadius * math.cos(startAngle),
          size.height - baseLineRadius * math.sin(startAngle),
        ),
        radius: size.height * 0.5 * diameterFactor,
      ),
      -startAngle,
      math.pi,
    );

    path.addArc(
      Rect.fromCircle(
        center: Offset(size.width / 2, size.height),
        radius: innerRadius,
      ),
      math.pi + startAngle,
      sweepAngle,
    );

    path.addArc(
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
