import 'package:first_flutter_app/Models/sounds_2.dart';
import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_list_title.dart';
import 'package:first_flutter_app/common/my_keys.dart';
import 'package:flutter/material.dart';

class MyListView extends StatefulWidget {
  MyListView() : super(key: myListViewState);

  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.red,
        child: ListView.builder(
            reverse: true,
            // scrollDirection: Axis.horizontal,
            // physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: sounds.length,
            itemBuilder: (context, index) {
              Sound sound = sounds[index];
              return Dismissible(
                direction: DismissDirection.startToEnd,
                key: ObjectKey(sound),
                child: MyListTitle(sound, index, remove),
                onDismissed: (direction) {
                  remove(sound);
                },
              );
            }));
  }

  update(Sound sound, int index) {
    setState(() {
      mySounds[index] = sound;
    });
  }

  add(Sound sound) {
    setState(() {
      mySounds.add(sound);
    });
  }

  remove(Sound sound) {
    setState(() {
      mySounds.remove(sound);
    });
  }
}
