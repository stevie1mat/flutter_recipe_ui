import 'package:flutter/material.dart';
import 'package:flutter_recipe/getstarted_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: GetStarted()),
    );
  }
}
