import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:project_dart_1/Controller/football_controller.dart';
import 'package:project_dart_1/models/player.dart';

class FootballEditController extends GetxController {
  final footballController = Get.find<FootballController>();

  late TextEditingController namaController;
  late TextEditingController positionController;
  late TextEditingController nomorController;
  late TextEditingController imageController;

  late int playerIndex;

  void loadPlayerData(Player player, int index) {
    namaController = TextEditingController(text: player.nama);
    positionController = TextEditingController(text: player.position);
    nomorController = TextEditingController(text: player.nomorPunggung.toString());
    imageController = TextEditingController(text: player.profileImage);
    playerIndex = index;
  }

  void savePlayer() {
    final updatedPlayer = Player(
      profileImage: imageController.text,
      nama: namaController.text,
      position: positionController.text,
      nomorPunggung: int.tryParse(nomorController.text) ?? 0,
    );
    footballController.updatePlayer(playerIndex, updatedPlayer);
    Get.back();
  }
}