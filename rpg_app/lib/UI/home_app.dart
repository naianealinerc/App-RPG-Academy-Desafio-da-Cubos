import 'dart:math';
import 'package:flutter/material.dart';
import 'package:rpg_app/UI/views/view_dice.dart';
import 'package:rpg_app/UI/views/view_home.dart';
import '../model/model_dice.dart';
import '../resources/strings.dart';
import '../resources/theme.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({super.key});

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
  final ThemeData themeLight = RPGAcademyTheme.light;
  final ThemeData themeDark = RPGAcademyTheme.dark;

  bool isDark = false;
  int selected = 0;

  final pageController = PageController();
  bool isActivePageHome = true;
  bool isActivePageDice = false;
  late int numberSides;
  int numberSelected = 0;

  final listDice = [
    Dice(
        image: const AssetImage('assets/images/d4.png'),
        numberSides: 4,
        name: Strings.d4),
    Dice(
        image: const AssetImage('assets/images/d6.png'),
        numberSides: 6,
        name: Strings.d6),
    Dice(
        image: const AssetImage('assets/images/d8.png'),
        numberSides: 8,
        name: Strings.d8),
    Dice(
        image: const AssetImage('assets/images/d10.png'),
        numberSides: 10,
        name: Strings.d10),
    Dice(
        image: const AssetImage('assets/images/d12.png'),
        numberSides: 12,
        name: Strings.d12),
    Dice(
        image: const AssetImage('assets/images/d20.png'),
        numberSides: 20,
        name: Strings.d20),
  ];

  // Método que muda tema de light para dark
  void changeTheme() {
    return setState(() {
      isDark = !isDark;
    });
  }

  // Método de seleção do dado de RPG no menu da Home
  void selectedButton(int num) {
    setState(() {
      selected = num;
      isActivePageHome = false;
      isActivePageDice = true;
    });
    pageController.nextPage(
        duration: const Duration(milliseconds: 300), curve: Curves.ease);
  }

  // Método de seleção do botão que leva para página Home
  void selectedPageHome() {
    setState(() {
      isActivePageHome = true;
      isActivePageDice = false;
    });
    pageController.jumpToPage(0);
  }

  // Método de seleção do botão que leva para página do Dado
  void selectedPageDice() {
    setState(() {
      isActivePageHome = false;
      isActivePageDice = true;
    });
    pageController.jumpToPage(1);
  }

  // Método que altera a imagem de dado que aparece na tela do dado escolhido e seta o número de lados do dado
  String selectedDiceImage() {
    switch (selected) {
      case 0:
        {
          numberSides = listDice[0].numberSides;
          return "assets/images/bg_d4.png";
        }

      case 1:
        {
          numberSides = listDice[1].numberSides;
          return "assets/images/bg_d6.png";
        }

      case 2:
        {
          numberSides = listDice[2].numberSides;
          return "assets/images/bg_d8.png";
        }

      case 3:
        {
          numberSides = listDice[3].numberSides;
          return "assets/images/bg_d10.png";
        }

      case 4:
        {
          numberSides = listDice[4].numberSides;
          return "assets/images/bg_d12.png";
        }

      case 5:
        {
          numberSides = listDice[5].numberSides;
          return "assets/images/bg_d20.png";
        }

      default:
        {
          numberSides = listDice[0].numberSides;
          return "";
        }
    }
  }

  // Método do botão de rolagem de dado: sortea um número aleatório de 1 até o número total de lados do dado escolhido
  void rollDice() {
    setState(() {
      numberSelected = Random().nextInt(numberSides) + 1;
    });
  }

  // Método do botão de Cancelar: reseta os valores e volta para a Home
  void cancelButton() {
    setState(() {
      numberSelected = 0;
      numberSides = 0;
      selected = 0;
    });
    selectedPageHome();
  }

  @override
  Widget build(BuildContext context) {
    final ThemeData theme = isDark ? themeDark : themeLight;
    final ThemeMode themeMode = isDark ? ThemeMode.dark : ThemeMode.light;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeLight,
      themeMode: themeMode,
      darkTheme: themeDark,
      home: PageView(
          physics: const NeverScrollableScrollPhysics(),
          controller: pageController,
          children: [
            ViewHome(
              isActivePageDice: isActivePageDice,
              isActivePageHome: isActivePageHome,
              selectedPageDice: selectedPageDice,
              selectedPageHome: selectedPageHome,
              isDark: isDark,
              theme: theme,
              changeTheme: changeTheme,
              listDice: listDice,
              selectedDice: selectedButton,
            ),
            ViewDice(
              cancelButton: cancelButton,
              numberSelected: numberSelected,
              rollDice: rollDice,
              isActivePageDice: isActivePageDice,
              isActivePageHome: isActivePageHome,
              selectedPageDice: selectedPageDice,
              selectedPageHome: selectedPageHome,
              isDark: isDark,
              theme: theme,
              changeTheme: changeTheme,
              selectedImg: selectedDiceImage(),
            ),
          ]),
    );
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }
}
