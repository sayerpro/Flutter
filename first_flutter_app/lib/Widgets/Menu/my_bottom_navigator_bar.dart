// import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_list_title.dart';
import 'package:flutter/material.dart';

typedef VoidCallbackParam = Function(int index);

class MyBottomNavigatorBar extends StatelessWidget {
  final VoidCallbackParam voidCallbackParam;
  final int currentIndex;
  const MyBottomNavigatorBar(this.voidCallbackParam, this.currentIndex, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        onTap: (index) => voidCallbackParam(index),
        selectedItemColor: Colors.deepPurpleAccent,
        iconSize: 30,
        selectedLabelStyle: const TextStyle(fontSize: 14),
        unselectedLabelStyle: const TextStyle(fontSize: 11),
        backgroundColor: Colors.deepPurple,
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: "Lista"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "Configuración")
        ],
        type: BottomNavigationBarType.fixed);
  }
}
