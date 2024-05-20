import 'package:flutter/material.dart';
import 'package:lesson39/screens/sliders_screen.dart';

class OnBoarding2 extends StatelessWidget {
  const OnBoarding2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "BU ONBOARDING 2",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        OutlinedButton(
          onPressed: () {
            showModalBottomSheet(
              context: context,
              builder: (ctx) {
                return SlidersScreen();
              },
            );
          },
          child: const Text("Pastdan chiqadigan oynani ko'rsat"),
        ),
      ],
    );
  }
}
