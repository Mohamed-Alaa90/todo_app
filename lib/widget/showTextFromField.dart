import 'package:flutter/material.dart';

import '../theme.dart';

class ShowTextFromField extends StatelessWidget {
  ShowTextFromField(
      {super.key,
      required this.name,
      required this.liens,
      required this.nameValidator});

  var name = '';
  var liens = 0;
  var nameValidator = '';

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (text) {
        if (text == null || text.isEmpty) {
          return nameValidator;
        }
        return null;
      },
      maxLines: liens,
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
