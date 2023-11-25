import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(backgroundImage: AssetImage("assets/images/Yo.png")),
              accountName: Text("Nombre"),
              accountEmail: Text("Email")),
          ListTile(
            leading: Icon(Icons.home),
            title: Text("Inicio"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_play_outlined),
            title: Text("Lista"),
          ),
          ListTile(
            leading: Icon(Icons.engineering_rounded),
            title: Text("Configuración"),
          ),
          Divider(height: 6, color: Colors.black),
          ListTile(
            leading: Icon(Icons.close),
            title: Text("Salir"),
          ),
        ],
      ),
    );
  }
}
