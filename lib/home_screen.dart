import 'package:flutter/material.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/widget/add_task.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDFECDB),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // تم تعديل الموقع إلى centerDocked
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyTheme.primaryLightColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTask(),
          );
        },
        child: const Icon(
          Icons.add,
          size: 30,
          color: Colors.white,
        ),
      ),
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height * 0.16,
        title: Text(
          'To Do List',
          style: Theme.of(context).textTheme.titleLarge,
        ),
        backgroundColor: MyTheme.primaryLightColor,
      ),
      bottomNavigationBar: BottomAppBar(
        notchMargin: 8.0,
        child: BottomNavigationBar(
          currentIndex: selectIndex,
          onTap: (int index) {
            setState(() {
              selectIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.list_outlined),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
    );
  }
}
