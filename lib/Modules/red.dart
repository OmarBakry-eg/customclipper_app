import 'package:flutter/material.dart';

class TriangleClipperRed extends CustomClipper<Path> {
  //moveTo
  @override
  Path getClip(Size size) {
    final path = //Path()..moveTo(size.width/2,0.0)..lineTo(0.0,size.height)..lineTo(size.width,size.height)..close();
        Path()
          ..moveTo(size.width, 0.0)
          ..lineTo(0.0, size.height - 50)
          ..lineTo(0.0, 0.0)
          ..close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperRed oldClipper) => false;
}
