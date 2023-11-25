import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  const MyRadio({super.key});

  @override
  State<MyRadio> createState() => _MyRadioState();
}

class _MyRadioState extends State<MyRadio> {
  String currentValue = "";

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
            value: "radio1",
            title: const Text("Soltero"),
            groupValue: currentValue,
            onChanged: (value) {
              onChange(value);
            }),
        RadioListTile(
            value: "radio2",
            title: const Text("Casado"),
            groupValue: currentValue,
            onChanged: (value) {
              onChange(value);
            }),
        Text(currentValue)
      ],
    );
  }

  onChange(value) {
    setState(() {
      currentValue = value.toString();
    });
  }
}
