import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  const MyStack({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Image.asset("assets/images/Yo.png"),
        const Positioned(
            // right: 10,
            // bottom: 10,
            child: Icon(
          Icons.access_alarm,
          size: 100,
        ))
      ],
    );
  }
}
