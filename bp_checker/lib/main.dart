import 'package:bp_checker/screen/bp_measurement.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        // useMaterial3: true,
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.red),
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Blood Pressure Checker')),
        ),
        body: const Center(child: BPScreen()),
      ),
    );
  }
}
