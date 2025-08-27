import 'package:first_app/dice_roll.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GradientContainer extends StatefulWidget {
  const GradientContainer(this.colors1, this.colors2, {super.key});
  final Color colors1;
  final Color colors2;

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [widget.colors1, widget.colors2],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: Center(
        child:DiceRoll()
      ),
    );
  }
}
