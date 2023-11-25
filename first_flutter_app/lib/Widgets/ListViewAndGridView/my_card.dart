import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onDoubleTap: () {
          // print("onDoubleTap");
        },
        onTapDown: (TapDownDetails downDetails) {
          // print("onTapDown ${downDetails.globalPosition}");
        },
        onTapUp: (TapUpDetails upDetails) {
          // print("onTapUp");
        },
        child: Card(
          elevation: 30,
          margin: const EdgeInsets.all(20),
          color: Colors.blue,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30), side: const BorderSide(color: Colors.red, width: 10)),
          shadowColor: Colors.deepOrange,
          child: const Text(
            "Hola mundo",
            style: TextStyle(fontSize: 40),
          ),
        ));
  }
}
