import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/Controller/football_edit_controller.dart';
import 'package:project_dart_1/Controller/calculator_controller.dart';


class MyCalcu extends StatelessWidget {
  final CalculatorController calculatorController = Get.find();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: calculatorController.txtAngka1,
              decoration: const InputDecoration(labelText: "Angka 1"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: calculatorController.txtAngka2,
              decoration: const InputDecoration(labelText: "Angka 2"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                calculatorController.tambah();
              },
              child: const Text("Tambah"),
            ),
            const SizedBox(height: 20),
            Obx(
              () => Text(
                "Hasil: ${calculatorController.hasil.value}",
                style: const TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
