import 'package:first_flutter_app/Models/sounds_2.dart';
import 'package:flutter/material.dart';

class SounListTitle extends StatelessWidget {
  final Sound sound;
  final int index;
  const SounListTitle(this.sound, this.index, {super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
        title: Text(
          sound.title,
        ),
        subtitle: Text(sound.author),
        // trailing: InkWell(onTap: () => voidCallbackParam(sound), child: const Icon(Icons.close)),
        trailing: const Icon(Icons.more_vert),
        leading: IconTheme(data: Theme.of(context).primaryIconTheme, child: const Icon(Icons.play_circle)));
    // leading: const Icon(Icons.play_circle));
  }
}
