import 'package:flutter/material.dart';
import 'package:task_manager/pages/home_page.dart';
import 'package:task_manager/pages/notification_page.dart';
import 'package:task_manager/pages/search_page.dart';
import 'package:task_manager/pages/tasks_page.dart';

class MainHome extends StatefulWidget {
  const MainHome({super.key});

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  final List pages = const [
    HomePage(),
    TasksPage(),
    NotificPage(),
    SearchPage()
  ];

  int currentIndex = 0;

  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffF2F5FF),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        backgroundColor: const Color(0xffF2F5FF),
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: const Color(0xff9C2CF3),
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              size: 30,
            ),
            label: 'Home',
            backgroundColor: Color(0xffF2F5FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.calendar_month_outlined,
              size: 30,
            ),
            label: 'Business',
            backgroundColor: Color(0xffF2F5FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notifications_none,
              size: 30,
            ),
            label: 'School',
            backgroundColor: Color(0xffF2F5FF),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30,
            ),
            label: 'Settings',
            backgroundColor: Color(0xffF2F5FF),
          ),
        ],
      ),
    );
  }
}
