import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/widget/textListItem.dart';

// ignore: must_be_immutable
class TaskTap extends StatefulWidget {
  TaskTap({super.key});


  @override
  State<TaskTap> createState() => _TaskTapState();
}
DateTime focusTime = DateTime.now();

class _TaskTapState extends State<TaskTap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        EasyInfiniteDateTimeLine(
          firstDate: DateTime(2023),
          focusDate: focusTime,
          lastDate: DateTime(2024, 12, 31),

          onDateChange: (selectedDate) {
            setState(() {
              focusTime = selectedDate;
            });
          },
        ),
        const SizedBox(
          height: 10,
        ),
        Expanded(
          child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return TextListItem();
              }),
        ),
      ],
    );
  }
}
