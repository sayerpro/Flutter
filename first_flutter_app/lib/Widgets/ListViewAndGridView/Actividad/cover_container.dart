import 'package:first_flutter_app/Models/sounds_2.dart';
import 'package:first_flutter_app/values/dimens_app.dart';
import 'package:flutter/material.dart';

class CoverContainer extends StatelessWidget {
  final Sound sound;
  const CoverContainer(this.sound, {super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        // physics: const NeverScrollableScrollPhysics(),
        child: Container(
            width: coverWith,
            height: coverHeigh,
            // Aplicar margenes Edgeinsets
            margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.circular(10),
                gradient: const LinearGradient(colors: [Colors.red, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
                image: DecorationImage(image: AssetImage(sound.cover)))));
  }
}
