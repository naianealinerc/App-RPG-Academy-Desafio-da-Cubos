import 'package:flutter/material.dart';
import '../../../model/model_dice.dart';

class ButtonMenuDice extends StatelessWidget {
  const ButtonMenuDice(
      {Key? key,
      required this.selectedDice,
      required this.theme,
      required this.dice,
      required this.index})
      : super(key: key);

  final void Function(int p1) selectedDice;
  final ThemeData theme;
  final Dice dice;
  final int index;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectedDice(index);
      },
      child: Container(
        width: 328,
        height: 61,
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: theme.cardColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: dice.image,
              width: 45,
              height: 45,
            ),
            const SizedBox(
              width: 16,
            ),
            Text(
              dice.name,
              style: theme.textTheme.bodyText1,
            )
          ],
        ),
      ),
    );
  }
}
