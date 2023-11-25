import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  const MyTextField({super.key});

  @override
  State<MyTextField> createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlAge = TextEditingController();
  String name = "";
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),
        TextField(
          style: const TextStyle(color: Colors.green),
          maxLength: 5,
          controller: ctrlName,
          autofocus: true,
          focusNode: node1,
          keyboardType: TextInputType.text,
          textAlign: TextAlign.center,
          // maxLines: 3,
          obscureText: true,
          decoration: InputDecoration(
              enabled: false,
              prefix: const Icon(Icons.account_circle_rounded),
              hintText: "Nombre",
              hintStyle: const TextStyle(color: Colors.grey),
              disabledBorder:
                  OutlineInputBorder(borderSide: const BorderSide(color: Colors.blue, width: 10), borderRadius: BorderRadius.circular(30)),
              enabledBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.black87, width: 10)),
              focusedBorder: const OutlineInputBorder(borderSide: BorderSide(color: Colors.red, width: 10))),
          // keyboardType: TextInputType.number,
          // keyboardType: TextInputType.emailAddress,
          // keyboardType: TextInputType.datetime,
        ),
        TextField(
            decoration: const InputDecoration(labelText: "Edad", icon: Icon(Icons.access_alarms_outlined)),
            controller: ctrlAge,
            focusNode: node2,
            autofocus: true,
            keyboardType: TextInputType.number,
            textAlign: TextAlign.center
            // keyboardType: TextInputType.number,
            // keyboardType: TextInputType.emailAddress,
            // keyboardType: TextInputType.datetime,
            ),
        ElevatedButton(
            onPressed: () {
              FocusScope.of(context).requestFocus(node2);
              setState(() {
                name = ctrlName.text.toString();
              });
            },
            child: const Text("Guardar"))
      ],
    );
  }
}
