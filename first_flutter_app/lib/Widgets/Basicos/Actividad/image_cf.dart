import 'package:flutter/material.dart';

class ImageCF extends StatelessWidget {
  const ImageCF({super.key});

  @override
  Widget build(BuildContext context) {
    return const Align(
      alignment: Alignment.center,
      child: Image(
        image: AssetImage("assets/images/Yo.png"),
        width: 300,
        height: 300,
        fit: BoxFit.fill,
      ),
    );
  }
}
