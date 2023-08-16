import 'package:bp_checker/models/text_title.dart';
import 'package:flutter/material.dart';

class BPScreen extends StatefulWidget {
  const BPScreen({super.key});

  @override
  State<BPScreen> createState() => _BPScreenState();
}

class _BPScreenState extends State<BPScreen> {
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: SizedBox(
        width: 150,
        height: 100,
        child: Card(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [TextTitle(title: 'SYS'), Text('----')],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [TextTitle(title: 'DIA'), Text('----')],
              )
            ],
          ),
        ),
      ),
    );
  }
}
