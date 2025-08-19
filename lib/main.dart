import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_dart_1/routes/pages.dart';
import 'package:project_dart_1/routes/routes.dart';
import 'package:project_dart_1/Contoller/football_controller.dart';



void main() {
  Get.put(FootballController());   // daftarin controller
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: AppRoutes.calculator,
      getPages: AppPages.pages,
      debugShowCheckedModeBanner: false,
    );
  }
}
