import 'package:flutter/material.dart';

class MyDropDowmButton extends StatefulWidget {
  const MyDropDowmButton({super.key});

  @override
  State<MyDropDowmButton> createState() => _MyDropDowmButtonState();
}

class _MyDropDowmButtonState extends State<MyDropDowmButton> {
  String? currentValue = "";
  List<String> courses = ["Flutter", "Dart", "Php", "Android", "iOS"];

  @override
  void initState() {
    super.initState();
    currentValue = courses[0];
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: currentValue,
      dropdownColor: Colors.amber,
      icon: const Icon(Icons.music_note),
      onChanged: (String? value) {
        setState(() {
          if (value != null && currentValue != value) {
            currentValue = value;
          }
        });
      },
      items: courses.map((String course) => DropdownMenuItem(value: course, child: Text(course))).toList(),
    );
  }
}
