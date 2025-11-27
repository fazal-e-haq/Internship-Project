import 'package:flutter/material.dart';
import 'package:week_3_project/presentation/screens/add_task_screen.dart';
import 'package:week_3_project/presentation/screens/home_screen.dart';
import 'package:week_3_project/presentation/screens/profile_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {

  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    AddTaskScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: _screens[_currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xffEFEBFB),
        selectedItemColor: Color(0xff6368D9),
        unselectedItemColor: Color(0xffD1D0F9),
        iconSize: 40,

        currentIndex: _currentIndex,

        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },

        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Add task'),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin), label: 'Profile'),
        ],
      ),
    );
  }
}
