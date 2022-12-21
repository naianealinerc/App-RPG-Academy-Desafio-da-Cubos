import 'package:flutter/material.dart';
import '../../resources/strings.dart';
import '../components/buttons/button_cancel.dart';
import '../components/buttons/button_roll.dart';
import '../components/view_screen.dart';

class ViewDice extends StatefulWidget {
  const ViewDice(
      {super.key,
      required this.isDark,
      required this.theme,
      required this.changeTheme,
      required this.selectedImg,
      required this.isActivePageDice,
      required this.isActivePageHome,
      required this.selectedPageDice,
      required this.selectedPageHome,
      required this.numberSelected,
      required this.rollDice,
      required this.cancelButton});

  final bool isDark;
  final ThemeData theme;
  final VoidCallback changeTheme;
  final String selectedImg;

  final bool isActivePageHome;
  final bool isActivePageDice;
  final VoidCallback selectedPageHome;
  final VoidCallback selectedPageDice;
  final VoidCallback rollDice;
  final VoidCallback cancelButton;

  final int numberSelected;

  @override
  State<ViewDice> createState() => _ViewDiceState();
}

class _ViewDiceState extends State<ViewDice> {
  late int number;

  @override
  Widget build(BuildContext context) {
    return ViewScreen(
        isActivePageDice: widget.isActivePageDice,
        isActivePageHome: widget.isActivePageHome,
        selectedPageDice: widget.selectedPageDice,
        selectedPageHome: widget.selectedPageHome,
        isDark: widget.isDark,
        theme: widget.theme,
        changeTheme: widget.changeTheme,
        subtitleText: Strings.subtitleDice,
        widgetView: Column(
          children: [
            const SizedBox(
              height: 25,
            ),
            Stack(
              children: [
                Container(
                  padding:
                      const EdgeInsets.only(left: 16, right: 16, bottom: 430),
                  decoration: BoxDecoration(
                    color: widget.theme.cardColor,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                Positioned(
                  top: 40,
                  left: 65,
                  child: Image(
                    image: AssetImage(widget.selectedImg),
                    width: 250,
                    height: 250,
                  ),
                ),
                widget.numberSelected.toString().length == 1
                    ? Positioned.directional(
                        top: 120,
                        start: 169,
                        textDirection: TextDirection.ltr,
                        child: Text(
                          widget.numberSelected == 0 &&
                                  widget.numberSelected < 10
                              ? "?"
                              : "${widget.numberSelected}",
                          style: const TextStyle(
                              fontSize: 80.4,
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    : Positioned.directional(
                        top: 112,
                        start: 155,
                        textDirection: TextDirection.ltr,
                        child: Text(
                          "${widget.numberSelected}",
                          style: const TextStyle(
                              fontSize: 80.4,
                              color: Colors.white,
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.bold,
                              letterSpacing: -9),
                        ),
                      ),
                ButtonRoll(
                  numberSelected: widget.numberSelected,
                  rollDice: widget.rollDice,
                ),
                ButtonCancel(cancelButton: widget.cancelButton)
              ],
            ),
          ],
        ));
  }
}
