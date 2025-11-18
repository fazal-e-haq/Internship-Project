import 'package:flutter/material.dart';
import 'package:week_2_project/Screens/home_screen.dart';
import 'package:week_2_project/Screens/splash_screen.dart';

import 'Theme/light_theme.dart';

void main() {
  runApp(const ToDoListApp());
}

 class ToDoListApp extends StatelessWidget {
   const ToDoListApp({super.key});

   @override
   Widget build(BuildContext context) {


     return MaterialApp(
debugShowCheckedModeBanner: false,
       theme: lightMode,
       themeMode: ThemeMode.light,

       home: SplashScreen(),

     );
   }
 }
