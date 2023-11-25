// import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_card.dart';
// import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_grid_view.dart';
// import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_container.dart';
// import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_list_title.dart';
// import 'package:first_flutter_app/common/my_routes.dart';
// import 'package:first_flutter_app/pages/now_playing_page.dart';
// import 'package:first_flutter_app/Models/sounds_2.dart';
import 'package:first_flutter_app/Widgets/ListViewAndGridView/Actividad/play_list_view.dart';
import 'package:first_flutter_app/common/my_keys.dart';
import 'package:first_flutter_app/generated/l10n.dart';
// import 'package:first_flutter_app/values/colors_app.dart';
// import 'package:first_flutter_app/Widgets/ListViewAndGridView/my_list_view.dart';
// import 'package:first_flutter_app/common/my_keys.dart';
import 'package:flutter/material.dart';

class PlaylistPage extends StatefulWidget {
  const PlaylistPage({super.key});

  @override
  State<PlaylistPage> createState() => _PlaylistPage();
}

class _PlaylistPage extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(S.of(context).welcome),
        title: Text(S.of(context).meney("\$20")),
      ),
      // backgroundColor: textOpacity,
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            myAppStateKey.currentState!.changeTheme(ThemeMode.dark);
          },
          // onPressed: () => myListViewState.currentState
          //     ?.add(Sound(title: "It's a fine day", author: "OPUS III", cover: "assets/images/2637581.jpg", time: "00:59")),
          child: const Icon(Icons.add)),
      body: SafeArea(
        child: PlayListView(),
        //     child: ElevatedButton(
        //   child: const Text("NowPlayingPage"),
        //   onPressed: () {
        //     Navigator.pushNamed(context, ROUTE_NOW_PLAYING);
        //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //     //   return const NowPlayingPage();
        //     // }));
        //   },
        // )
      ),
    );
  }
}
