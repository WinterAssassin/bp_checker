import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PField extends StatefulWidget {
  const PField({super.key});

  @override
  State<PField> createState() => _PFieldState();
}

class _PFieldState extends State<PField> {
  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 50,
      height: 60,
      child: TextField(
        keyboardType: TextInputType.number,
        maxLength: 3,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        // style: TextStyle(
        //   fontSize: 16,
        // ),
        decoration: InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
        ),
      ),
    );
  }
}
