library Estra;

import 'package:estradart/estradart.dart';

// Trigger
void main() async {
  firstExample();
  secondExample();
  thirdExample();
}

// First Example
void firstExample() async {
  print(
      "Truth Challenge: ${await EstraAniGames.truth(2)}"); // Generate 2 Truth Text, Output: Type List<String>
  print("Dare challenge: ${await EstraAniGames.dare()}");
}

// Second Examples
void secondExample() async {
  var Waifu = await EstraAniGames.waifu();
  print("Waifu Picture: ${Waifu["link"]}");
  print("Waifu Name: ${Waifu["character_name"]}");
}

// Third Examples
void thirdExample() async {
  var Husbando = await EstraAniGames.husbando();
  print("Husbando Picture: ${Husbando["link"]}");
  print("Husbando Picture: ${Husbando["character_name"]}");
}
