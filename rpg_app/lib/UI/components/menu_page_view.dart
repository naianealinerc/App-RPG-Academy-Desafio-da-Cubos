
import 'package:flutter/material.dart';
import 'buttons/button_page.dart';

class MenuPageView extends StatelessWidget {
  const MenuPageView({
    Key? key,
    required this.selectedPageHome,
    required this.isActivePageHome,
    required this.selectedPageDice,
    required this.isActivePageDice,
  }) : super(key: key);

  final VoidCallback selectedPageHome;
  final bool isActivePageHome;
  final VoidCallback selectedPageDice;
  final bool isActivePageDice;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ButtonPage(
            selectedPage: selectedPageHome,
            isActivePage: isActivePageHome),
        const SizedBox(
          width: 8,
        ),
        ButtonPage(
            selectedPage: selectedPageDice,
            isActivePage: isActivePageDice)
      ],
    );
  }
}
