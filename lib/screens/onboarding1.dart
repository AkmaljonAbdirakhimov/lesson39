import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class OnBoarding1 extends StatefulWidget {
  const OnBoarding1({super.key});

  @override
  State<OnBoarding1> createState() => _OnBoarding1State();
}

class _OnBoarding1State extends State<OnBoarding1> {
  Color color = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          children: [
            Expanded(
              child: Text(
                "Ertagimizni boshlanishi: Enim occaecat et cillum eiusmod.Do esse et ea amet.Aolore fugiat amet in qui ad mollit magna exercitation magna.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "Ikkinchi davomi: Enim occaecat et cillum eiusmod.Do esse et ea amet.Ad volufugiat amet in qui ad mollit magna exercitation magna.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Expanded(
              child: Text(
                "Uchunchi davomi: Enim occaecat et cillum eiusmod.Do esse et ea amet.Ad voluptate Lorem do volu magna exercitation magna.",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
            children: [
              const TextSpan(
                text:
                    "Ertagimizni boshlanishi: Enim occaecat et cillum eiusmod.Do esse et ea amet.Aolore fugiat amet in qui ad mollit magna exercitation magna.",
              ),
              TextSpan(
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    print("Bu matn bosildi!");
                    if (color == Colors.blue) {
                      color = Colors.red;
                    } else {
                      color = Colors.blue;
                    }
                    setState(() {});
                  },
                style: TextStyle(
                  color: color,
                  fontSize: 20,
                ),
                text:
                    "Ikkinchi davomi: Enim occaecat et cillum eiusmod.Do esse et ea amet.Ad volufugiat amet in qui ad mollit magna exercitation magna.",
              ),
              const TextSpan(
                text:
                    "Uchunchi davomi: Enim occaecat et cillum eiusmod.Do esse et ea amet.Ad voluptate Lorem do volu magna exercitation magna.",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
