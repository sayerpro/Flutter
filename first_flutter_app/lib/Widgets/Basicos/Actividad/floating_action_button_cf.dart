// import 'package:first_flutter_app/pages/play_list_pages.dart';
// import 'package:first_flutter_app/common/my_routes.dart';
import 'package:flutter/material.dart';

class FloatingActionButtonCF extends StatelessWidget {
  final VoidCallback voidCallback;
  const FloatingActionButtonCF(this.voidCallback, {super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () => voidCallback(),
        // onPressed: () {
        //   // Navigator.pop(context);
        //   // Navigator.popAndPushNamed(context, ROUTE_PLAY_LIST);
        //   Navigator.pushNamedAndRemoveUntil(context, ROUTE_PLAY_LIST, (Route<dynamic> route) => false);
        //   // Navigator.pushNamed(context, ROUTE_PLAY_LIST);
        //   // Navigator.push(context, MaterialPageRoute(builder: (context) {
        //   //   return const PlaylistPage();
        //   // }));
        //   // Navigator.pop(context);
        // },
        backgroundColor: Colors.orange,
        elevation: 20,
        tooltip: "Agregar usuario",
        shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(30))),
        child: const Icon(Icons.add, size: 40));
  }
}
