import 'package:flutter/material.dart';

class RotaionAnimation extends StatefulWidget {
  const RotaionAnimation({super.key});

  @override
  State<RotaionAnimation> createState() => _RotaionAnimationState();
}

class _RotaionAnimationState extends State<RotaionAnimation> {
  double turn = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AnimatedRotation(
          curve: Curves.ease,
          duration: const Duration(seconds: 5),
          turns: 3,
          child: GestureDetector(
            onTap: () {
              setState(() {
                if (turn == 1) {
                  turn = 2;
                } else {
                  turn = 1;
                }
              });
            },
            child: SizedBox(
              height: 100,
              width: 100,
              child: Image.asset('assets/images/khiyar.png'),
            ),
          ),
        ),
      ),
    );
  }
}
