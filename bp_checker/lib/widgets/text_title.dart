import 'package:flutter/material.dart';

class TextTitle extends StatelessWidget {
  final String title;

  const TextTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SelectionContainer.disabled(
          child: Text(
            title,
            style: const TextStyle(
              fontSize: 26,
            ),
            textAlign: TextAlign.left,
          ),
        ),
        const SelectionContainer.disabled(
          child: Text(
            'mmHg',
            style: TextStyle(
              fontSize: 12,
            ),
            textAlign: TextAlign.right,
          ),
        ),
      ],
    );
  }
}
