import 'package:flutter/material.dart';
import 'dice_roller.dart';

const startAlignment = Alignment.bottomCenter;
const endAlignment = Alignment.topCenter;

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.color1, this.color2, {super.key});

  GradientContainer.Pink({super.key})
    : color1 = Color.fromARGB(255, 255, 215, 225),
      color2 = Color.fromARGB(255, 194, 102, 122);

  final Color color1;
  final Color color2;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: startAlignment,
          end: endAlignment,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
