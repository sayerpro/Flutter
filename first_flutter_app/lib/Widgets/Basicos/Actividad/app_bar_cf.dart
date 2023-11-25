import 'package:flutter/material.dart';

class AppBarCF extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const AppBarCF(this.title, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: Colors.deepPurpleAccent,
      centerTitle: true,
      toolbarOpacity: 0.5,
      actions: [
        const Icon(Icons.edit, color: Colors.white),
        PopupMenuButton<int>(
          color: Colors.pink,
          elevation: 80,
          shape: const OutlineInputBorder(borderSide: BorderSide(color: Colors.white, width: 10)),
          itemBuilder: (context) => [
            const PopupMenuItem<int>(
              value: 1,
              child: Row(
                children: [
                  Icon(Icons.more_vert, color: Colors.white),
                  SizedBox(width: 8),
                  Text("Compartir"),
                ],
              ),
            ),
            const PopupMenuItem<int>(
              value: 2,
              child: Row(
                children: [
                  Icon(Icons.more_vert, color: Colors.white),
                  SizedBox(width: 8),
                  Text("Obtener link", style: TextStyle(color: Colors.green)),
                ],
              ),
            ),
          ],
        )
      ],
      toolbarHeight: 100,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(100);
}
