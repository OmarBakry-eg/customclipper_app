import 'package:flutter/material.dart';

class MyCustomClipper extends StatelessWidget {
  final Color color;
  final CustomClipper<Path> clipper;
  MyCustomClipper({@required this.color, @required this.clipper});
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      child: Container(
        width: 150,
        height: 150,
        color: color,
      ),
      clipper: clipper,
    );
  }
}
