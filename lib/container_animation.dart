import 'package:flutter/material.dart';

class ContainerAnimation extends StatefulWidget {
  const ContainerAnimation({super.key});

  @override
  State<ContainerAnimation> createState() => _ContainerAnimationState();
}

class _ContainerAnimationState extends State<ContainerAnimation> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: SizedBox(
        height: 100,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: 3,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedIndex = index;
                });
              },
              child: AnimatedContainer(
                margin: const EdgeInsets.all(20),
                width: (index == _selectedIndex) ? 100 : 50,
                height: 100,
                color: (index == _selectedIndex) ? Colors.blue : Colors.red,
                duration: const Duration(milliseconds: 200),
                child: AnimatedScale(
                  duration: const Duration(milliseconds: 800),
                  scale: (index == _selectedIndex) ? 1 : 0,
                  child: const Center(
                    child: Text(
                      'Selected',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    ));
  }
}
