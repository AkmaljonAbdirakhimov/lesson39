import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Chat Screen",
          style: TextStyle(fontSize: 30),
        ),
      ],
    );
  }
}
