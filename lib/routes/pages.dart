import 'package:get/get.dart';
import 'package:project_dart_1/pages/calculator_page.dart';
import 'package:project_dart_1/pages/football_page.dart';
import 'package:project_dart_1/pages/football_edit_page.dart';
import 'package:project_dart_1/pages/profile_page.dart';
import 'package:project_dart_1/pages/home_page.dart'; // ⬅️ tambahin ini
import 'routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: AppRoutes.home, // ⬅️ route ke HomePage
      page: () => HomePage(),
    ),
    GetPage(name: AppRoutes.calculator, page: () => CalculatorPage()),
    GetPage(name: AppRoutes.footballplayers, page: () => FootballPage()),
    GetPage(
      name: AppRoutes.footballeditplayers,
      page: () => FootballEditPage(),
    ),
    GetPage(name: AppRoutes.profile, page: () => ProfilePage()),
  ];
}
