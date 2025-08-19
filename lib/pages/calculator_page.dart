import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/Contoller/Calculator_Contoller.dart';
import 'package:project_dart_1/routes/routes.dart';
import 'package:project_dart_1/widget/widget_button.dart';
import 'package:project_dart_1/widget/wiget_controller.dart';


class CalculatorPage extends StatelessWidget {
CalculatorPage({super.key});

final CalculatorController calculatorController = Get.put(CalculatorController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
    child: Column(
    children: [
      MyTextField(textEditingController: calculatorController.txtAngka1, labelText: "Inputan Angka 1", IsPassword: false),
      MyTextField(textEditingController: calculatorController.txtAngka2, labelText: "Inputan Angka 2", IsPassword: false),

      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            CustomButton(text: "+", textColor: Colors.blue, OnPressed: (){
            calculatorController.tambah();
            }),
            CustomButton(text: "-", textColor: Colors.red, OnPressed: (){
            calculatorController.kurang();
            }),
          ],
        ),
      ),
      Container(
        margin: EdgeInsets.all(10),
        child: Row(
          children: [
            CustomButton(text: "x", textColor: Colors.yellow, OnPressed: (){
            calculatorController.kali();
            }),
            CustomButton(text: "/", textColor: Colors.green, OnPressed: (){
            calculatorController.bagi();
            }),
          ],
        ),
      ),
      Obx(() => Text("Hasil "+calculatorController.hasil.value)),
      CustomButton(
            text: "Move to footballplayer",
            textColor: Colors.green,
            OnPressed: () {
               Get.toNamed(AppRoutes.footballplayer);
            },
          ),       
        ],
      ),
    ),
  );
    
  }
}