import 'dart:math';

import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  
  // ignore: non_constant_identifier_names
  var current_roll=1;

  void rollDice() {
    setState(() {
      current_roll = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset("assets/images/dice-$current_roll.png", width: 200),
        SizedBox(height: 20),
        TextButton(onPressed: rollDice, child: Text("Roll Dice")),
      ],
    );
  }
}
