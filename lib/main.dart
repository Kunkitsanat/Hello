import 'package:flutter/material.dart';
import 'package:hello/hello.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Hello(), // Updated class name
      ),
    );
  }
}