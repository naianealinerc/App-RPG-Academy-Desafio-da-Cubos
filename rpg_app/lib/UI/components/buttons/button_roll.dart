import 'package:flutter/material.dart';
import '../../../resources/strings.dart';


class ButtonRoll extends StatelessWidget {
  const ButtonRoll({
    Key? key,
    required this.numberSelected,
    required this.rollDice,
  }) : super(key: key);

  final int numberSelected;
  final VoidCallback rollDice;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      left: 50,
      child: ElevatedButton(
        onPressed: numberSelected == 0 ? rollDice : null,
        child: const Text(
          Strings.buttonRoll,
        ),
      ),
    );
  }
}
