import 'package:flutter/material.dart';

enum PressureCategory { none, low, normal, elevated, h1, h2, hCrisis }

class BPCategory extends StatelessWidget {
  final PressureCategory reading;
  const BPCategory({super.key, required this.reading});

  @override
  Widget build(BuildContext context) {
    return switch (reading) {
      PressureCategory.none => const ReadingCategory(
          text: 'None', catColor: Color.fromRGBO(204, 204, 204, 1)),
      PressureCategory.low => const ReadingCategory(
          text: 'Low', catColor: Color.fromRGBO(173, 216, 230, 1)),
      PressureCategory.normal => const ReadingCategory(
          text: 'Normal', catColor: Color.fromRGBO(166, 206, 57, 1)),
      PressureCategory.elevated => const ReadingCategory(
          text: 'Elevated', catColor: Color.fromRGBO(255, 236, 0, 1)),
      PressureCategory.h1 => const ReadingCategory(
          text: 'Hypertension Stage 1',
          catColor: Color.fromRGBO(255, 182, 0, 1)),
      PressureCategory.h2 => const ReadingCategory(
          text: 'Hypertension Stage 2',
          catColor: Color.fromRGBO(186, 58, 2, 1)),
      PressureCategory.hCrisis => const ReadingCategory(
          text: 'Hypertensive Crisis', catColor: Color.fromRGBO(153, 7, 17, 1)),
    };
  }
}

class ReadingCategory extends StatelessWidget {
  final String text;
  final Color catColor;

  const ReadingCategory(
      {super.key, required this.text, required this.catColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 50,
      color: catColor,
      child: Center(
          child: Text(
        text,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
      )),
    );
  }
}
