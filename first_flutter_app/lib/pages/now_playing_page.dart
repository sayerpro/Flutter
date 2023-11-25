// import 'package:first_flutter_app/Widgets/MultiChild/my_column.dart';
// import 'package:first_flutter_app/Widgets/MultiChild/my_row.dart';
// import 'package:first_flutter_app/Widgets/MultiChild/my_stack.dart';
// import 'package:first_flutter_app/common/MyRoutes.dart';
// import 'package:first_flutter_app/pages/MyHomePage.dart';
import 'package:first_flutter_app/Widgets/MultiChild/Actividad/playing_now.dart';
import 'package:flutter/material.dart';

class NowPlayingPage extends StatefulWidget {
  const NowPlayingPage({super.key});

  @override
  State<NowPlayingPage> createState() => _NowPlayingPage();
}

class _NowPlayingPage extends State<NowPlayingPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: SafeArea(child: PlayingNow())
        //     child: ElevatedButton(
        //   child: const Text("MyHomePage"),
        //   onPressed: () {
        //     Navigator.pushNamed(context, ROUTE_HOME);
        //     // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //     //   return const MyHomePage();
        //     // }));
        //   },
        // )),
        );
  }
}
