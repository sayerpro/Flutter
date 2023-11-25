import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  const MyRow({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Row(
    //   // Organiza de manera horizontal
    //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    //   // Organiza de manera vertical
    //   crossAxisAlignment: CrossAxisAlignment.center,
    //   children: [
    //     Column(
    //       children: [Text("Hola"), Text("Hola"), Text("Hola")],
    //     ),
    //     Text("Hola mundillo", style: TextStyle(backgroundColor: Colors.black)),
    //     Text("Hola mundillo"),
    //     Text("Hola mundillo"),
    //     Text("Hola mundillo"),
    //     Text("Hola mundillo"),
    //     Text("Hola mundillo")
    //   ],
    // );

    return const SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          // Organiza de manera horizontal
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          // Organiza de manera vertical
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              children: [Text("Hola"), Text("Hola"), Text("Hola")],
            ),
            Text("Hola mundillo", style: TextStyle(backgroundColor: Colors.black)),
            Text("Hola mundillo"),
            Text("Hola mundillo"),
            Text("Hola mundillo"),
            Text("Hola mundillo"),
            Text("Hola mundillo")
          ],
        ));
  }
}
