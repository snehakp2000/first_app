import 'package:flutter/material.dart';

class DiceRoll extends StatefulWidget {
  const DiceRoll({super.key});

  @override
  State<DiceRoll> createState() => _DiceRollState();
}

class _DiceRollState extends State<DiceRoll> {
  var activeDice = "assets/images/dice-1.png";

  void rollDice() {
    setState(() {
      activeDice = "assets/images/dice-2.png";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image.asset(activeDice, width: 200),
        SizedBox(height: 20),
        TextButton(onPressed: rollDice, child: Text("Roll Dice")),
      ],
    );
  }
}
