import 'package:flutter/material.dart';

class SlidersScreen extends StatefulWidget {
  const SlidersScreen({super.key});

  @override
  State<SlidersScreen> createState() => _SlidersScreenState();
}

class _SlidersScreenState extends State<SlidersScreen> {
  double changingValue = 0;
  RangeValues rangeValues = RangeValues(0, 100);
  RangeLabels rangeLabels = RangeLabels("0", "100");

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          Slider(
            value: changingValue,
            onChanged: (value) {
              changingValue = value;
              setState(() {});
            },
          ),
          RangeSlider(
            labels: rangeLabels,
            values: rangeValues,
            min: 0,
            max: 1000,
            divisions: 1000,
            onChanged: (value) {
              rangeValues = value;
              rangeLabels =
                  RangeLabels(value.start.toString(), value.end.toString());
              setState(
                () {},
              );
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(rangeLabels.start),
              Text(rangeLabels.end),
            ],
          )
        ],
      ),
    );
  }
}
