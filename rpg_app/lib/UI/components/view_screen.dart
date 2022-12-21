import 'package:flutter/material.dart';
import 'header_theme_mode.dart';
import 'menu_page_view.dart';

class ViewScreen extends StatelessWidget {
  const ViewScreen(
      {Key? key,
      required this.isDark,
      required this.theme,
      required this.changeTheme,
      required this.subtitleText,
      required this.widgetView,
      required this.isActivePageDice,
      required this.isActivePageHome,
      required this.selectedPageDice,
      required this.selectedPageHome})
      : super(key: key);

  final bool isDark;
  final ThemeData theme;
  final VoidCallback changeTheme;
  final String subtitleText;
  final Widget widgetView;
  final bool isActivePageHome;
  final bool isActivePageDice;
  final VoidCallback selectedPageHome;
  final VoidCallback selectedPageDice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            HeaderThemeMode(isDark: isDark, changeTheme: changeTheme),
            const SizedBox(
              height: 15,
            ),
            Text(
              subtitleText,
              style: theme.textTheme.bodyText1,
            ),
            const SizedBox(
              height: 15,
            ),
            Expanded(flex: 3, child: widgetView),
            const SizedBox(
              height: 30,
            ),
            MenuPageView(
                selectedPageHome: selectedPageHome,
                isActivePageHome: isActivePageHome,
                selectedPageDice: selectedPageDice,
                isActivePageDice: isActivePageDice),
          ],
        ),
      ),
    );
  }
}
