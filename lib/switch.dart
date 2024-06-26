import 'package:flutter/material.dart';

class AnimationSwitch extends StatefulWidget {
  const AnimationSwitch({super.key});

  @override
  State<AnimationSwitch> createState() => _AnimationSwitchState();
}

class _AnimationSwitchState extends State<AnimationSwitch> {
  bool isSwitchTrue = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isSwitchTrue = !isSwitchTrue;
          });
        },
        child: Center(
          child: AnimatedSwitcher(
              duration: const Duration(seconds: 1),
              child: (isSwitchTrue)
                  ? const Image(
                      key: Key('1'),
                      image: AssetImage('assets/images/khiyar.png'),
                    )
                  : const Image(
                      key: Key('2'),
                      image: AssetImage('assets/images/gozhe.png'),
                    )),
        ),
      ),
    );
  }
}
