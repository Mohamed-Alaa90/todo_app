import 'package:flutter/material.dart';
import '../theme.dart';

class ShowTextFormField extends StatelessWidget {
  final String name;
  final int maxLines;
  final String nameValidator;
  final Function(String) onChanged;
  final String initialValue;

  const ShowTextFormField({
    super.key,
    required this.name,
    required this.maxLines,
    required this.nameValidator,
    required this.onChanged,
    this.initialValue = '',
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      initialValue: initialValue,
      validator: (text) {
        if (text == null || text.isEmpty) {
          return nameValidator;
        }
        return null;
      },
      onChanged: onChanged,
      maxLines: maxLines,
      decoration: InputDecoration(
        labelText: name,
        labelStyle: TextStyle(color: MyTheme.primaryLightColor),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(25),
          borderSide: BorderSide(color: MyTheme.primaryLightColor),
        ),
      ),
    );
  }
}
