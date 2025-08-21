import 'package:first_app/styled_text.dart';
import 'package:flutter/material.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(this.colors1, this.colors2, {super.key});
  final Color colors1;
  final Color colors2;
  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [colors1,colors2],
          begin: Alignment.topRight,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(child: StyledText("hello world")),
    );
  }
}
