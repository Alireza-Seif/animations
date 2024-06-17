import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class PositionedAnimation extends StatefulWidget {
  const PositionedAnimation({super.key});

  @override
  State<PositionedAnimation> createState() => _PositionedAnimationState();
}

class _PositionedAnimationState extends State<PositionedAnimation> {
  double top = 70;
  double left = 70;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AnimatedPositioned(
            curve: Curves.easeInCirc,
            duration: const Duration(milliseconds: 500),
            top: top,
            left: left,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  top += 20;
                  left += 20;
                });
              },
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.asset('assets/images/khiyar.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
