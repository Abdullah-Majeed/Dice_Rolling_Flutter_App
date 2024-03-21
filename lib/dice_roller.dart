import 'package:first_app/custom_text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var randomDiceRoll = 2;
  void rollDice() {
    setState(() {
      randomDiceRoll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/images/dice-$randomDiceRoll.png',
          width: 200.0,
        ),
        TextButton(onPressed: rollDice, child: const CustomText('Roll Dice'))
      ],
    );
  }
}
