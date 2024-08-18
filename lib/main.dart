import 'package:flutter/material.dart';
import 'package:todo_app/home_screen.dart';
import 'package:todo_app/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen()
      },
      title: 'To Do',
      theme: MyTheme.lightTheme
    );
  }
}