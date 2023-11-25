import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  const MyButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return myOutLineButton();
  }

  myElevateButton() {
    //   return ElevatedButton(
    //       style: ElevatedButton.styleFrom(
    //           foregroundColor: Colors.black,
    //           backgroundColor: Colors.white,
    //           shadowColor: Colors.indigo,
    //           elevation: 20),
    //       onLongPress: () {
    //         print("onLongPress");
    //       },
    //       onPressed: () {
    //         print("ElevationButton");
    //       },
    //       child: const Text("Guardar"));
    // }

    return ElevatedButton.icon(
      label: const Text("Guardar"),
      icon: const Icon(Icons.save, color: Colors.red),
      style:
          ElevatedButton.styleFrom(foregroundColor: Colors.black, backgroundColor: Colors.white, shadowColor: Colors.indigo, elevation: 20),
      onLongPress: () {
        // print("onLongPress");
      },
      onPressed: () {
        // print("ElevationButton");
      },
    );
  }

  myTextButton() {
    return TextButton(
        onPressed: () {
          // print("textButton");
        },
        child: const Text("Guardar"));
  }

  myOutLineButton() {
    return OutlinedButton(
        style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.black, width: 3),
            foregroundColor: Colors.black,
            shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)))),
        onPressed: () {
          // print("textButton");
        },
        child: const Text("Guardar"));
  }
}
