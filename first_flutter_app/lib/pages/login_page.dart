// import 'package:first_flutter_app/Widgets/Form/my_check_box.dart';
// import 'package:first_flutter_app/Widgets/Form/my_date_picker.dart';
// import 'package:first_flutter_app/Widgets/Form/my_drop_dowm_button.dart';
// import 'package:first_flutter_app/Widgets/Form/my_switch.dart';
// import 'package:first_flutter_app/Widgets/Form/my_form.dart';
// import 'package:first_flutter_app/Widgets/Form/my_text_field.dart';
// import 'package:first_flutter_app/Widgets/Form/my_radio.dart';
// import 'package:first_flutter_app/common/home_arguments.dart';
// import 'package:first_flutter_app/common/my_routes.dart';
// import 'package:first_flutter_app/pages/MyHomePage.dart';
// import 'package:flutter/cupertino.dart';
import 'package:first_flutter_app/Widgets/Form/Actividad/login_form.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPage();
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: SafeArea(child: LoginForm()
            // child: ElevatedButton(
            //     child: const Text("MyHomePage"),
            //     onPressed: () {
            //       Navigator.pushNamed(context, ROUTE_HOME, arguments: HomeArguments("Homeless", "Hola mundo"));
            //       // Navigator.push(context, MaterialPageRoute(builder: (context) {
            //       //   return const MyHomePage();
            //       // }));
            //       // Navigator.push(context, CupertinoPageRoute(builder: (context) {
            //       //   return const MyHomePage();
            //       // }));
            //     })));
            ));
  }
}
