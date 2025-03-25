import 'package:flutter/material.dart';
//import 'package:roll_dice_app/styled_text.dart';
import 'package:roll_dice_app/dice_roller.dart';

class GradinetContainer extends StatelessWidget {
  const GradinetContainer(this.colors, {super.key});
  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(child: DiceRoller()),
    );
  }
}
