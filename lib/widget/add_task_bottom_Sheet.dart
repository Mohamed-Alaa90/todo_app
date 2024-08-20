import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
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
          TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter your Task Name',
              labelStyle: TextStyle(color: MyTheme.primaryLightColor),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: MyTheme.primaryLightColor),
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: MyTheme.primaryLightColor),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          TextFormField(
            maxLines: 4,
            decoration: InputDecoration(
              labelText: 'Enter desc',
              labelStyle: TextStyle(color: MyTheme.primaryLightColor),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(25),
                borderSide: BorderSide(color: MyTheme.primaryLightColor),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Text(
            'Select Time',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          Text(
            '7/5/2024',
            style: Theme.of(context).textTheme.titleSmall,
            textAlign: TextAlign.center,
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
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
