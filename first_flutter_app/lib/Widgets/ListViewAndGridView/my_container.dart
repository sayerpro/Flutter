import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});
  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // print("Containag");
        },
        onLongPress: () {
          // print("ContainagOnPressed");
        },
        child: Container(
          width: 200,
          height: 200,
          alignment: Alignment.center,
          // Aplicar margenes Edgeinsets
          margin: const EdgeInsets.all(30),
          padding: const EdgeInsets.only(top: 1),
          decoration: BoxDecoration(
              color: Colors.green,
              border: Border.all(color: Colors.black, width: 10),
              shape: BoxShape.circle,
              boxShadow: const [BoxShadow(color: Colors.black12, offset: Offset(4, 8))],
              gradient: const LinearGradient(colors: [Colors.red, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
              image: const DecorationImage(image: AssetImage("assets/images/Yo.png"))),
          child: const Text("Hola mundo"),
        ));
  }
}
