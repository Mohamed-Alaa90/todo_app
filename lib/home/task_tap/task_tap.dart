import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/widget/text_list_item.dart';

class TaskTap extends StatefulWidget {
  const TaskTap({super.key});

  @override
  State<TaskTap> createState() => _TaskTapState();
}

class _TaskTapState extends State<TaskTap> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
              color: MyTheme.whiteColor,
              borderRadius: BorderRadius.circular(25)),
          child: CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(const Duration(days: 365)),
            lastDate: DateTime.now().add(const Duration(days: 365)),
            leftMargin: 20,
            monthColor: MyTheme.blackColor,
            dayColor: MyTheme.blackColor,
            activeDayColor: MyTheme.whiteColor,
            activeBackgroundDayColor: MyTheme.primaryLightColor,
            dotColor: Color(0xFF333A47),
            locale: 'ar',
            onDateSelected: (DateTime) {
              // تنفيذ إجراء عند تحديد تاريخ
            },
          ),
        ),
        SizedBox(height: 10,),
        Expanded(
          child: ListView.builder(
              itemCount: 10, // عدد العناصر في القائمة
              itemBuilder: (context, index) {
                return TextListItem();
              } // تأكد من صحة العنصر
              ),
        ),
      ],
    );
  }
}
