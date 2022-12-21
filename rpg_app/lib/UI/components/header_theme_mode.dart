import 'package:flutter/material.dart';

import '../../resources/strings.dart';
import '../../resources/theme.dart';

class HeaderThemeMode extends StatelessWidget {
  const HeaderThemeMode({
    Key? key,
    required this.isDark,
    required this.changeTheme,
  }) : super(key: key);

  final bool isDark;
  final VoidCallback changeTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          Strings.appTitle,
          style: TextStyle(
              color: primaryColor,
              fontSize: 24,
              fontWeight: FontWeight.bold),
        ),
        Switch(
          activeColor: primaryColor,
          activeTrackColor: switchTrackerActive,
          inactiveTrackColor: backgroundLight,
          value: isDark,
          onChanged: ((value) {
            changeTheme();
          }),
        ),
      ],
    );
  }
}