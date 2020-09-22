import 'package:flutter/material.dart';

class TopClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0, size.height * 0.9167)
      ..quadraticBezierTo(
        size.width * 0.25,
        size.height * 0.775,
        size.width * 0.5,
        size.height * 0.9167,
      )
      ..quadraticBezierTo(
        size.width * 0.75,
        size.height * 1.0584,
        size.width * 1.0,
        size.height * 0.9167,
      )
      // ..quadraticBezierTo(
      //   thirdControlPoint.dx,
      //   thirdControlPoint.dy,
      //   thirdEndPoint.dx,
      //   thirdEndPoint.dy,
      // )
      // ..quadraticBezierTo(
      //   fourthControlPoint.dx,
      //   fourthControlPoint.dy,
      //   fourthEndPoint.dx,
      //   fourthEndPoint.dy,
      // )
      // ..quadraticBezierTo(
      //   fifthControlPoint.dx,
      //   fifthControlPoint.dy,
      //   fifthEndPoint.dx,
      //   fifthEndPoint.dy,
      // )
      ..lineTo(size.width, size.height)
      ..lineTo(size.width, 0)
      ..close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
