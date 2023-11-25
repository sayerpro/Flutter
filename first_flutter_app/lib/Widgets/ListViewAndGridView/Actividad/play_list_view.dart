import 'package:first_flutter_app/Models/sounds_2.dart';
import 'package:first_flutter_app/Widgets/ListViewAndGridView/Actividad/cover_container.dart';
import 'package:first_flutter_app/Widgets/ListViewAndGridView/Actividad/sound_list_title.dart';
import 'package:first_flutter_app/common/my_keys.dart';
import 'package:first_flutter_app/values/dimens_app.dart';
import 'package:flutter/material.dart';

class PlayListView extends StatefulWidget {
  PlayListView() : super(key: myListViewState);

  @override
  State<StatefulWidget> createState() => MyPlayListView();
}

class MyPlayListView extends State<PlayListView> {
  List<Sound> mySounds = [];

  @override
  void initState() {
    super.initState();
    mySounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: coverHeigh,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: sounds.length,
              itemBuilder: (context, index) {
                return CoverContainer(mySounds[index]);
              }),
        ),
        ListView.builder(
            shrinkWrap: true,
            itemCount: sounds.length,
            itemBuilder: (context, index) {
              Sound sound = sounds[index];
              return SounListTitle(sound, index);
            })
      ]),
    );
  }
}
