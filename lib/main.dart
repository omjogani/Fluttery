import 'package:flutter/material.dart';
import 'package:fluttery/constants/colors.dart';
import 'package:fluttery/tools/shadow_generator/shadow_generator.dart';

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
        primarySwatch: kMaterialPrimaryColor,
        fontFamily: "SF Pro Text",
      ),
      
      home: const ShadowGenerator(),
    );
  }
}
