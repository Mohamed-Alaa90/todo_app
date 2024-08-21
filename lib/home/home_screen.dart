import 'package:flutter/material.dart';
import 'package:todo_app/home/setting_tap/setting_tap.dart';
import 'package:todo_app/home/task_tap/task_tap.dart';
import 'package:todo_app/theme.dart';
import 'package:todo_app/widget/add_task_bottom_Sheet.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'Home_Screen';

  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: MyTheme.primaryLightColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) => AddTaskBottomSheet(),
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
              icon: Icon(Icons.list),
              label: 'Tasks',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Setting',
            ),
          ],
        ),
      ),
      body: selectIndex == 0 ? TaskTap() : SettingTap(),
    );
  }
}
