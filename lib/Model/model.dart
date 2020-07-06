import 'package:flutter/material.dart';
import '../Widget/widget.dart';
import '../Modules/Exporting/export.dart';

class CustomClipperPractice extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MyCustomClipper(
                  color: Colors.amber, clipper: TriangleClipperAmber()),
              SizedBox(
                height: 25.0,
              ),
              MyCustomClipper(color: Colors.red, clipper: TriangleClipperRed()),
              SizedBox(
                height: 25.0,
              ),
              MyCustomClipper(
                  color: Colors.white, clipper: TriangleClipperWhite()),
              SizedBox(
                height: 25.0,
              ),
              MyCustomClipper(
                  color: Colors.purple, clipper: TriangleClipperPurple()),
            ],
          ),
        ),
      ),
    );
  }
}
