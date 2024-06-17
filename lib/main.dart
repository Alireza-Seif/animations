import 'package:animations/opacity_animation.dart';
import 'package:animations/position_animation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: PositionedAnimation()
    );
  }
}
