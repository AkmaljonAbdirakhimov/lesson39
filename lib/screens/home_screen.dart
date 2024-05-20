import 'package:flutter/material.dart';
import 'package:lesson39/screens/chat_screen.dart';
import 'package:lesson39/screens/explore_screen.dart';
import 'package:lesson39/screens/home2_screen.dart';
import 'package:lesson39/screens/settings_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedScreen = 0;

  List<Widget> screens = [
    Home2Screen(),
    ExploreScreen(),
    ChatScreen(),
    SettingsScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      body: screens[selectedScreen],
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.amber,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue,
        notchMargin: 10,
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  selectedScreen = 0;
                });
              },
              icon: const Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedScreen = 1;
                });
              },
              icon: const Icon(Icons.explore),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedScreen = 2;
                });
              },
              icon: const Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  selectedScreen = 3;
                });
              },
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
      ),
    );
  }
}
