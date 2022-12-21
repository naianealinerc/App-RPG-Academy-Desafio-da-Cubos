import 'package:flutter/material.dart';
import '../../../resources/theme.dart';

class ButtonPage extends StatelessWidget {
  const ButtonPage({
    Key? key, 
    required this.selectedPage, 
    required this.isActivePage,
  }) : super(key: key);

  final bool isActivePage;
  final VoidCallback selectedPage;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: selectedPage,
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: isActivePage ? primaryColor : buttonPage,
        ),
      ),
    );
  }
}