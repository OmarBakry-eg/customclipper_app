import 'package:flutter/material.dart';

class TriangleClipperWhite extends CustomClipper<Path> {
  //quadraticBezierTo
  @override
  Path getClip(Size size) {
    var controlPoint = Offset(
        size.width / 2, size.height / 2); //positive always down and negative up
    // var controlPoint = Offset(size.width / 2, size.height);
    // var controlPoint = Offset(size.width / 2, - size.height);
    // var controlPoint = Offset(size.width / 2, - size.height - 50);
    var endPoint = Offset(size.width, size.height);
    final path = Path()
      ..moveTo(size.width / 2, 0.0) // where you will be start ?
      ..lineTo(0.0, size.height) // your start point
//..lineTo(size.width,size.height) //because it the real end point so i can't make a line to it and after this make a curve ending in it
      ..quadraticBezierTo(
          controlPoint.dx, controlPoint.dy, endPoint.dx, endPoint.dy)
      ..close();
    return path;
  }

  @override
  bool shouldReclip(TriangleClipperWhite oldClipper) => false;
}
