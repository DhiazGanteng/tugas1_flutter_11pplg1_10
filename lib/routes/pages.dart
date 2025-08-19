import 'package:get/get.dart';

import 'package:project_dart_1/Pages/calculator_page.dart';
import 'package:project_dart_1/Pages/football_edit_page.dart';
import 'package:project_dart_1/Pages/football_pages.dart';
import 'package:project_dart_1/routes/routes.dart';

class AppPages{
  static final pages = [
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayer, page: () => FootballPage()),
    GetPage(name: AppRoutes.footballedit, page: () => FootballEditPage())
  ];

}