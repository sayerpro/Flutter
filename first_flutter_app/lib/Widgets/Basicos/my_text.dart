import 'package:flutter/material.dart';

class MyText extends StatelessWidget {
  const MyText({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Hola mundo esto es flutter app probando',
      style: TextStyle(
          color: Colors.white,
          fontSize: 30,
          fontWeight: FontWeight.bold,
          letterSpacing: 5,
          wordSpacing: 20,
          backgroundColor: Colors.black26,
          fontFamily: "Montserrat",
          decoration: TextDecoration.underline),
      textAlign: TextAlign.center,
      softWrap: false,
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
    );
  }
}
