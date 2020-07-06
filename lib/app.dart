import 'package:flutter/material.dart';
import 'Model/model.dart';

class MyApp extends StatelessWidget {
  final Color darkBlue = Color.fromARGB(255, 18, 32, 47);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: darkBlue),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: CustomClipperPractice(),
        ),
      ),
    );
  }
}
