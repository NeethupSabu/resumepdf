import 'package:flutter/material.dart';
import 'package:resumepdf_app/Screens/ResumeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Resume PDF',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ResumeScreen(),
    );
  }
}
