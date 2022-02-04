library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

// Trigger
void main() async {
  firstExample();
  secondExample();
  thirdExample();
  fourthExample();
}

// First Example
void firstExample() async {
  print(
      "Truth Challenge: ${await Client.AniGames.truth(2)}"); // Generate 2 Truth Text, Output: Type List<String>
  print("Dare challenge: ${await Client.AniGames.dare()}");
}

// Second Examples
void secondExample() async {
  var Waifu = await Client.AniGames.waifu();
  print("Waifu Picture: ${Waifu["link"]}");
  print("Waifu Name: ${Waifu["character_name"]}");
}

// Third Examples
void thirdExample() async {
  var Husbando = await Client.AniGames.husbando();
  print("Husbando Picture: ${Husbando["link"]}");
  print("Husbando Picture: ${Husbando["character_name"]}");
}

// Fourth Examples
void fourthExample() async {
  var Shipper = await Client.AniGames.shipper_waifu("Stawa");
  print("Player Name: ${Shipper["player"]}");
  print("Waifu Name: ${Shipper["character"]}");
  print("Percentage: ${Shipper["percentage"]}");
}
