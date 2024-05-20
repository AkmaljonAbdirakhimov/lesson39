//? TabBar / PageView
//? RichText
//? showModalBottomSheet
//? BottomNavigationbar with Notched Shape - Body Pages
//? Sliders
//? TextField

import 'package:flutter/material.dart';
import 'package:lesson39/screens/auth/login_screen.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: LoginScreen(),
    );
  }
}
