import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  const MyFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    //   return FloatingActionButton(
    //       onPressed: () {
    //         print("Boton flotante");
    //       },
    //       backgroundColor: Colors.red,
    //       elevation: 20,
    //       tooltip: "Agregar usuario",
    //       child: const Icon(Icons.add, size: 40));
    // }

    return FloatingActionButton.extended(
        onPressed: () {
          // print("Boton flotante");
        },
        backgroundColor: Colors.red,
        elevation: 20,
        tooltip: "Agregar usuario",
        label: const Text("Agregar usuario"),
        icon: const Icon(Icons.add, size: 40));
  }
}
