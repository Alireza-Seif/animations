import 'package:flutter/material.dart';

class TextAnimation extends StatefulWidget {
  const TextAnimation({super.key});

  @override
  State<TextAnimation> createState() => _TextAnimationState();
}

class _TextAnimationState extends State<TextAnimation> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: AnimatedDefaultTextStyle(
            duration: Duration(seconds: 2),
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.blue),
            child: Text('Alireza')),
      ),
    );
  }
}
