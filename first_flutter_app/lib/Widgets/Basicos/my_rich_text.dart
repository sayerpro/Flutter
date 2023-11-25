import 'package:flutter/material.dart';

class MyRichText extends StatelessWidget {
  const MyRichText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
        text: const TextSpan(
            text: "¿Tienes una cuenta?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
            children: [
          TextSpan(
              text: "Inicia sesión",
              style: TextStyle(color: Colors.indigo, fontWeight: FontWeight.bold, decoration: TextDecoration.underline, fontSize: 20))
        ]));
  }
}
