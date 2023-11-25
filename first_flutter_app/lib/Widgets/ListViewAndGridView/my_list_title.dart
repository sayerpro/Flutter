import 'package:first_flutter_app/Models/sounds_2.dart';
import 'package:first_flutter_app/common/my_keys.dart';
import 'package:flutter/material.dart';

typedef VoidCallbackParam = Function(Sound sound);

class MyListTitle extends StatelessWidget {
  final Sound sound;
  final int index;
  final VoidCallbackParam voidCallbackParam;
  const MyListTitle(this.sound, this.index, this.voidCallbackParam, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        sound.title,
        style: const TextStyle(fontSize: 30),
      ),
      subtitle: Text(sound.author),
      // trailing: InkWell(onTap: () => voidCallbackParam(sound), child: const Icon(Icons.close)),
      trailing: InkWell(onTap: () => myListViewState.currentState?.remove(sound), child: const Icon(Icons.close)),
      leading: const Icon(Icons.chrome_reader_mode),
      onTap: () => myListViewState.currentState?.update(sound..title = "Crany", index),
      onLongPress: () {
        // print("OnlondTitle");
      },
    );
  }
}
