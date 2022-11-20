import 'package:flutter/material.dart';
import 'package:fluttery/screens/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fluttery',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: "SF Pro Text",
      ),
      
      home: const HomeScreen(),
    );
  }
}
