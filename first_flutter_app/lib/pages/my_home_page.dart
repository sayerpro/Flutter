// import 'package:first_flutter_app/Widgets/Basicos/MyAppBar.dart';
// import 'package:first_flutter_app/Widgets/Basicos/Mytext.dart';
// import 'package:first_flutter_app/common/home_arguments.dart';
import 'package:first_flutter_app/Widgets/Menu/Fragments/my_list.dart';
import 'package:first_flutter_app/Widgets/Menu/my_bottom_navigator_bar.dart';
import 'package:first_flutter_app/Widgets/Menu/my_drawer.dart';
import 'package:flutter/material.dart';
// import '../Widgets/Basicos/MyButtons.dart';
// import '../Widgets/Basicos/MyFloatingActionButton.dart';
// import '../Widgets/Basicos/MyIcon.dart';
// import '../Widgets/Basicos/MyImage.dart';
// import '../Widgets/Basicos/MyRichText.dart';
import '../Widgets/Basicos/Actividad/floating_action_button_cf.dart';
import '../Widgets/Basicos/Actividad/app_bar_cf.dart';
import 'package:first_flutter_app/Widgets/Menu/Fragments/my_home.dart';
import 'package:first_flutter_app/Widgets/Menu/Fragments/my_profile.dart';
import 'package:first_flutter_app/Widgets/Menu/Fragments/my_settings.dart';
// import '../Widgets/Basicos/Actividad/ImageCF.dart';

class MyHomePage extends StatefulWidget {
  final String? title;
  final String? message;
  const MyHomePage({Key? key, this.title, this.message}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  // int _counter = 0;

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  // }

  int currentIndex = 0;
  List fragments = [const MyHome(), const MyList(), const MyProfile(), const MySettings()];

  @override
  Widget build(BuildContext context) {
    // HomeArguments homeArguments = ModalRoute.of(context)!.settings.arguments as HomeArguments;
    return Scaffold(
        drawer: const MyDrawer(),
        bottomNavigationBar: MyBottomNavigatorBar(onTab, currentIndex),
        backgroundColor: Colors.deepPurple,
        floatingActionButton: FloatingActionButtonCF(bottomSheet),
        floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
        // appBar: AppBarCF(homeArguments.title),
        appBar: const AppBarCF("Inicio"),
        // body: const SafeArea(
        //   // child: Center(child: ImageCF()),
        //   // child: Center(child: Text(homeArguments.message)),
        //   child: Center(child: Text("Hola mundo"))
        // )
        body: fragments[currentIndex]);
  }

  bottomSheet() {
    showModalBottomSheet(
        context: context,
        builder: (builder) {
          return const Column(
            children: [
              ListTile(
                leading: Icon(Icons.share),
                title: Text("Compartir"),
              ),
              ListTile(
                leading: Icon(Icons.link),
                title: Text("Copiar link"),
              ),
              ListTile(
                leading: Icon(Icons.send),
                title: Text("Enviar"),
              )
            ],
          );
        });
  }

  onTab(int index) {
    setState(() {
      currentIndex = index;
    });
  }
}
