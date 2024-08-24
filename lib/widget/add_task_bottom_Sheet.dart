import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/widget/showTextFromField.dart';

class AddTaskBottomSheet extends StatefulWidget {
  const AddTaskBottomSheet({super.key});

  @override
  State<AddTaskBottomSheet> createState() => _AddTaskBottomSheetState();
}

var selectedDate = DateTime.now();
var formKey = GlobalKey<FormState>();
String title = '';
String description = '';

class _AddTaskBottomSheetState extends State<AddTaskBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              textAlign: TextAlign.center,
              'Add your Task',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(
              height: 15,
            ),
            ShowTextFormField(
              onChanged: (p0) {
                title = p0;
              },
              nameValidator: 'Please Enter Task Name',
              name: 'Enter Task Name',
              maxLines: 1,
            ),
            const SizedBox(
              height: 15,
            ),
            ShowTextFormField(
              onChanged: (p0) {
                description = p0;
              },
              nameValidator: 'Please Enter Task Description',
              name: 'Enter Task Description',
              maxLines: 4,
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              'Select Time',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            InkWell(
              onTap: () {
                showCalender();
              },
              child: Text(
                '${selectedDate.day}/${selectedDate.month}/${selectedDate.year}',
                style: Theme.of(context).textTheme.titleSmall,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  elevation: 5,
                  shape: CircleBorder(
                    side: BorderSide(color: MyTheme.whiteColor, width: 4),
                  ),
                  padding: const EdgeInsets.all(20),
                  backgroundColor: MyTheme.primaryLightColor),
              child: Icon(
                Icons.check,
                color: MyTheme.whiteColor,
              ),
              onPressed: () {
                addTask();
              },
            ),
          ],
        ),
      ),
    );
  }

  void showCalender() async {
    var chosenDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        const Duration(days: 365),
      ),
    );
    if (chosenDate != null) {
      selectedDate = chosenDate;
      setState(() {});
    }
  }

  void addTask() {
    if (formKey.currentState?.validate() == true) {}
  }
}
