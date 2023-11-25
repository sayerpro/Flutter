import 'package:flutter/material.dart';

class MySwitch extends StatefulWidget {
  const MySwitch({super.key});

  @override
  State<MySwitch> createState() => _MySwitchState();
}

class _MySwitchState extends State<MySwitch> {
  bool isSwitch = false;

  @override
  Widget build(BuildContext context) {
    return SwitchListTile(
      // activeTrackColor: Colors.blue,
      // activeColor: Colors.red,
      title: Text(isSwitch ? "On" : "Off"),
      subtitle: Text(isSwitch ? "Ok" : "NoOk"),
      value: isSwitch,
      onChanged: (value) => onChange(value),
    );
  }

  onChange(value) {
    setState(() {
      isSwitch = value;
    });
  }
}
