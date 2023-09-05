import 'package:flutter/material.dart';

enum PressureCategory { none, low, normal, elevated, h1, h2, hCrisis }

class BPCategory extends StatelessWidget {
  final PressureCategory reading;
  const BPCategory({super.key, required this.reading});

  @override
  Widget build(BuildContext context) {
    return switch (reading) {
      PressureCategory.none => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(204, 204, 204, 1),
        ),
      PressureCategory.low => Container(
          width: 200,
          height: 50,
          color: const Color.fromRGBO(173, 216, 230, 1),
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
