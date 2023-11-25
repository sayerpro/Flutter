import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_card.dart';
import 'package:flutter/material.dart';

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView(
    //   // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
    //   gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300, crossAxisSpacing: 30, mainAxisSpacing: 40),
    //   physics: const NeverScrollableScrollPhysics(),
    //   children: const [MyCard(), MyCard(), MyCard(), MyCard(), MyCard(), MyCard(), MyCard(), MyCard()],
    // );

    return GridView.builder(
      // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 300, crossAxisSpacing: 30, mainAxisSpacing: 40),
      itemCount: 30,
      itemBuilder: (context, index) => const MyCard(),
    );
  }
}
