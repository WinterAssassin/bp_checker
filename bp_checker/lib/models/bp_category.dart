import 'package:flutter/material.dart';

enum PressureCategory { low, normal, elevated, h1, h2, hCrisis }

class BPCategory {
  late PressureCategory reading;

  BPCategory({required this.reading});

  Widget catColor() {
    return switch (reading) {
      PressureCategory.low => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(166, 206, 57, 1),
        ),
      PressureCategory.normal => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(166, 206, 57, 1),
        ),
      PressureCategory.elevated => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(255, 236, 0, 1),
        ),
      PressureCategory.h1 => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(255, 182, 0, 1),
        ),
      PressureCategory.h2 => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(186, 58, 2, 1),
        ),
      PressureCategory.hCrisis => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(153, 7, 17, 1),
        ),
    };
  }
}
