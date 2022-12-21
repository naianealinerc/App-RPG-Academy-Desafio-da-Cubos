import 'package:flutter/material.dart';
import '../../model/model_dice.dart';
import '../../resources/strings.dart';
import '../components/buttons/button_menu_dice.dart';
import '../components/view_screen.dart';

class ViewHome extends StatelessWidget {
  const ViewHome(
      {super.key,
      required this.isDark,
      required this.theme,
      required this.changeTheme,
      required this.listDice,
      required this.selectedDice,
      required this.isActivePageDice,
      required this.isActivePageHome,
      required this.selectedPageDice,
      required this.selectedPageHome});

  final bool isDark;
  final ThemeData theme;
  final VoidCallback changeTheme;

  final List<Dice> listDice;
  final void Function(int) selectedDice;

  final bool isActivePageHome;
  final bool isActivePageDice;
  final VoidCallback selectedPageHome;
  final VoidCallback selectedPageDice;

  @override
  Widget build(BuildContext context) {
    return ViewScreen(
      isActivePageDice: isActivePageDice,
      isActivePageHome: isActivePageHome,
      selectedPageDice: selectedPageDice,
      selectedPageHome: selectedPageHome,
      isDark: isDark,
      theme: theme,
      changeTheme: changeTheme,
      subtitleText: Strings.subtitleHome,
      widgetView: ListView.builder(
        itemCount: listDice.length,
        itemBuilder: ((context, index) {
          final dice = listDice[index];

          return ButtonMenuDice(
              index: index, selectedDice: selectedDice, theme: theme, dice: dice);
        }),
      ),
    );
  }
}
