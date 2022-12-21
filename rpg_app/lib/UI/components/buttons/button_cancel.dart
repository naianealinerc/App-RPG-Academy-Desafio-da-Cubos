
import 'package:flutter/material.dart';
import '../../../resources/strings.dart';


class ButtonCancel extends StatelessWidget {
  const ButtonCancel({
    Key? key,
    required this.cancelButton,
  }) : super(key: key);

  final VoidCallback cancelButton;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 16,
      right: 50,
      child: OutlinedButton(
        onPressed: cancelButton,
        child: const Text(
          Strings.buttonCancelar,
          style: TextStyle(fontWeight: FontWeight.w600, fontFamily: "Roboto"),
        ),
      ),
    );
  }
}