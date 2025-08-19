import 'package:get/get.dart';
import 'package:project_dart_1/models/player.dart';






class FootballController extends GetxController {
  var players = <Player>[
Player(profileImage: 'https://i.pinimg.com/736x/fd/3c/fa/fd3cfa7d161b1e39db0c901bf708dd55.jpg', nama: "Yoichi Isagi", position: "Forward", nomorPunggung: 11),
Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ5ZPiDCkb27ABbvGOIZnCBXjAMqVMa-AJGeWmoyxssUjutdYIOgYKO2YQ3hoco0y4nzHA&usqp=CAU', nama: "Meguru Bachira", position: "Midfielder", nomorPunggung: 8),
Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT1xBOdZtIgtgfVllhC51hjpc6Fb0aYbKSGR4Fhq3bbSpyaIgTTbcclf_Sj78NDXmYyJTE&usqp=CAU', nama: "Seishiro Nagi", position: "Forward", nomorPunggung: 7),
Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRMjfDe5ChLc-Elxl6bpsy8pU1tQOvbO3kemZTfuzpEv5luryUYTpP1bjeYhR8bmfYsfY0&usqp=CAU', nama: "Sae Itoshi", position: "Midfielder", nomorPunggung: 4),
Player(profileImage: 'https://i.pinimg.com/736x/53/c7/a1/53c7a1aa078b64a265f0eb7e287f938b.jpg', nama: "Rin Itoshi", position: "Forward", nomorPunggung: 9),
Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQP0K-M9VOVOalq5-8XxSaSmJlaGaN-ehlvsh7gKxtr0SfugX32hA6C1yrmcSyvFM3fKCg&usqp=CAU', nama: "Michael Kaiser", position: "Forward", nomorPunggung: 10),
Player(profileImage: 'https://static.wikia.nocookie.net/bluelock/images/1/18/Alexis_Ness.png/revision/latest/thumbnail/width/360/height/360?cb=20220315172442', nama: "Alexis Ness", position: "Midfielder", nomorPunggung: 8),
Player(profileImage: 'https://i.pinimg.com/736x/7b/6c/28/7b6c284745df6ea28451b84e04aa1a89.jpg', nama: "Gagamaru", position: "GoalKeeper", nomorPunggung: 99),
Player(profileImage: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6KsAUAHda9Pg7NhOr4Htdr8qKUgWToGGBQHDcDxXsGyrv4PIp8zhCrTp8KBVmfJ95LPA&usqp=CAU', nama: "Lavinho", position: "Midfielder", nomorPunggung: 7),
Player(profileImage: 'https://static.wikia.nocookie.net/bluelock/images/d/da/Don_Lorenzo.png/revision/latest/scale-to-width-down/250?cb=20250518025815', nama: "Lorenzo", position: "Defender", nomorPunggung: 5),
Player(profileImage: 'https://i.pinimg.com/736x/72/ec/17/72ec176613314dcb09faa6c58603d22f.jpg', nama: "Noa", position: "Forward", nomorPunggung: 9), 
  ].obs;

void updatePlayer(int index, Player updatedPlayer) {
  players[index] = updatedPlayer;   // asumsi players itu RxList<Player>
  players.refresh();                // biar UI ke-refresh
}

}