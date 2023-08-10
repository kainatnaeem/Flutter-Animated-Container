import 'package:flutter/material.dart';

class AnimatedContainerByKtech extends StatefulWidget {
  const AnimatedContainerByKtech({super.key});

  @override
  State<AnimatedContainerByKtech> createState() =>
      _AnimatedContainerByKtechState();
}

class _AnimatedContainerByKtechState extends State<AnimatedContainerByKtech> {
  bool initValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            "Animated Container",
            style: TextStyle(color: Colors.white, fontSize: 20),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(255, 20, 108, 180)),
      backgroundColor: Colors.white,
      body: GestureDetector(
          onTap: () {
            setState(() {
              initValue = !initValue;
            });
          },
          child: Center(
              child: AnimatedContainer(
                  duration: const Duration(seconds: 2),
                  width: initValue ? 270 : 100.0,
                  height: initValue ? 300 : 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: initValue
                        ? const Color.fromARGB(255, 88, 170, 237)
                        : Colors.white,
                  ),
                  // This property takes AlignmentGeometry class as the object. It controls the alignment of the child widget with the container.
                  alignment: initValue
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  curve: Curves.slowMiddle,
                  child: Column(
                    children: [
                      Image.asset(
                        'images/kid.png',
                      ),
                      const Text(
                        "if you want to fly give up everything that weighs you down",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  )))),
    );
  }
}
