import 'package:get/get.dart';
import 'package:project_dart_1/Controller/football_controller.dart';

class GetInstance {
  static void init() {
    Get.put(FootballController(), permanent: true);

  }

  static FootballController get footballController => Get.find<FootballController>();
}