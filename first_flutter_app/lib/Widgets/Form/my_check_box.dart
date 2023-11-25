import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  const MyCheckBox({super.key});

  @override
  State<MyCheckBox> createState() => _MyCheckBoxState();
}

class _MyCheckBoxState extends State<MyCheckBox> {
  String currentValue = "";
  List<String> courses = ["Flutter", "Dart", "Php", "Android", "iOS"];
  List<bool> isChecked = [];

  @override
  void initState() {
    super.initState();
    isChecked = List<bool>.filled(courses.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Text(isChecked.toString()),
      ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
                title: Text(courses[index]),
                value: isChecked[index],
                onChanged: (value) {
                  setState(() {
                    isChecked[index] = value as bool;
                  });
                });
          })
    ]);
  }
}
