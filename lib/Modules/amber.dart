import 'package:flutter/material.dart';

class TriangleClipperAmber extends CustomClipper<Path> {
  //lineTo
  @override
  Path getClip(Size size) {
    final path = Path()
      ..lineTo(0.0, size.height)
      ..lineTo(size.width, size.height)
      ..lineTo(0.0, 0.0)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperAmber oldClipper) => false;
}
