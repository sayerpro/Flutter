import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text("Inicio"),
      backgroundColor: Colors.deepPurpleAccent,
      elevation: 30,
      shadowColor: Colors.white,
      centerTitle: true,
      toolbarOpacity: 0.5,
      leading: const Icon(Icons.arrow_back, color: Colors.white),
      actions: const [Icon(Icons.search, color: Colors.white), Icon(Icons.more_vert, color: Colors.white)],
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
