import 'package:flutter/material.dart';

class PField extends StatefulWidget {
  final TextEditingController pController;

  const PField({super.key, required this.pController});

  @override
  State<PField> createState() => _PFieldState();
}

class _PFieldState extends State<PField> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60,
      height: 60,
      child: TextField(
        controller: widget.pController,
        keyboardType: TextInputType.number,
        maxLength: 3,
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        decoration: const InputDecoration(
          border: OutlineInputBorder(),
          counterText: '',
        ),
      ),
    );
  }
}
