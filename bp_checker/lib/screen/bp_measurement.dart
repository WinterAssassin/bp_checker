import 'package:bp_checker/models/bp_category.dart';
import 'package:bp_checker/widgets/pressure_field.dart';
import 'package:bp_checker/widgets/text_title.dart';
import 'package:flutter/material.dart';

class BPScreen extends StatefulWidget {
  const BPScreen({super.key});

  @override
  State<BPScreen> createState() => _BPScreenState();
}

class _BPScreenState extends State<BPScreen> {
  late TextEditingController _pSysController;
  late TextEditingController _pDiaController;
  late PressureCategory status = PressureCategory.none;

  void _handleSubmit() {
    final sysFieldText = int.tryParse(_pSysController.text);
    final diaFieldText = int.tryParse(_pDiaController.text);
    setState(() {
      if (sysFieldText == null || diaFieldText == null) {
        status = PressureCategory.none;
      }
      if (sysFieldText != null && diaFieldText != null) {
        if (sysFieldText < 90 || diaFieldText < 60) {
          status = PressureCategory.low;
        } else if (sysFieldText < 120 && diaFieldText < 80) {
          status = PressureCategory.normal;
        } else if (sysFieldText < 130 || diaFieldText < 85) {
          status = PressureCategory.elevated;
        } else if (sysFieldText < 140 || diaFieldText < 90) {
          status = PressureCategory.h1;
        } else if (sysFieldText < 180 || diaFieldText < 120) {
          status = PressureCategory.h2;
        } else {
          status = PressureCategory.hCrisis;
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    _pSysController = TextEditingController();
    _pDiaController = TextEditingController();
  }

  @override
  void dispose() {
    _pSysController.dispose();
    _pDiaController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          BPCategory(reading: status),
          SizedBox(
            width: 200,
            height: 250,
            child: Card(
              margin: const EdgeInsets.all(10),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                          width: 50,
                          height: 60,
                          child: TextTitle(title: 'SYS')),
                      PField(pController: _pSysController)
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(
                          width: 50,
                          height: 60,
                          child: TextTitle(title: 'DIA')),
                      PField(pController: _pDiaController)
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Center(
                      child: ElevatedButton(
                          onPressed: _handleSubmit, child: const Text('Enter')))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
