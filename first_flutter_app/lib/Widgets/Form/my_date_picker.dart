import 'package:flutter/material.dart';

class MyDatePickers extends StatefulWidget {
  const MyDatePickers({super.key});

  @override
  State<MyDatePickers> createState() => _MyDatePickersState();
}

class _MyDatePickersState extends State<MyDatePickers> {
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: () => selectDate(), child: Text(selectedDate.toString()));
  }

  selectDate() async {
    DateTime? dateTime =
        await showDatePicker(context: context, initialDate: selectedDate, firstDate: DateTime(2023), lastDate: DateTime(2024));
    if (dateTime != null && selectedDate != dateTime) {
      setState(() {
        selectedDate = dateTime;
      });
    }
  }
}
