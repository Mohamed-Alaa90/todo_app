import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';

class AddTask extends StatelessWidget {
  const AddTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            textAlign: TextAlign.center,
            'Add your Task',
            style: Theme.of(context).textTheme.titleMedium,
          ),
          TextFormField(),
          TextButton(onPressed: (){}, child: Text('Add'))
        ],
      ),
    );
  }
}
