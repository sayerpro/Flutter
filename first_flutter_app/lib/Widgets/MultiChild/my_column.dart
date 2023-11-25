import 'package:flutter/material.dart';

class MyColumn extends StatelessWidget {
  const MyColumn({super.key});

  @override
  Widget build(BuildContext context) {
    // return const Column(
    // // Organiza de manera vertical
    //   mainAxisAlignment: MainAxisAlignment.spaceAround,
    // // Organiza de manera horizontal
    //   crossAxisAlignment: CrossAxisAlignment.center,
    // // Toma todo el tamaño de la pantalla
    //   mainAxisSize: MainAxisSize.max,
    //   children: [
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
    //     Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30))
    //   ],
    // );

    return const SingleChildScrollView(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30)),
        Text("ABCDEFGHIJKLMNÑOPQRSTUVWXYZ", style: TextStyle(fontSize: 30))
      ],
    ));
  }
}
