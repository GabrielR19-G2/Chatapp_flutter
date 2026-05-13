import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String titleButton;
  final VoidCallback? onPressed;
  const CustomButton({super.key, required this.titleButton, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 2,
        backgroundColor: Colors.blue,
        shape: StadiumBorder(),
      ),
      onPressed: onPressed,
      // () {
      //   // TODO: Imprimir valores de inputs
      //   print('Valores caja de texto');

      // },
      child: Container(
        width: double.infinity,
        height: 55,
        child: Center(
          child: Text(
            titleButton,
            style: TextStyle(color: Colors.white, fontSize: 18),
          ),
        ),
      ),
    );
  }
}
