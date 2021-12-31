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
  print("Truth Challenge: ${await EstraAniGames.truth()}");
  print("Dare challenge: ${await EstraAniGames.dare()}");
}

// Second Examples
void secondExample() async {
  var GetWaifu = EstraAniGames.InputLink = await EstraAniGames.waifu();
  print("Waifu Picture: $GetWaifu");
  print("Waifu Name: ${await EstraAniGames.waifu_name()}");
  // Just an reminder, you can't use two waifu_name function in once or it will return the same name!
}

void thirdExample() async {
  var GetHusbando = EstraAniGames.InputLink = await EstraAniGames.husbando();
  print("Husbando Picture: $GetHusbando");
  print("Husbando Name: ${await EstraAniGames.husbando_name()}");
  // Just an reminder, you can't use two waifu_name function in once or it will return the same name!
}
