library Estra;

import 'package:estradart/estradart.dart';

// Trigger
void main() async {
  firstExample();
  secondExample();
}

// First Example
void firstExample() async {
  print(await EstraAniGames.truth());
  print(await EstraAniGames.dare());
}

// Second Examples
void secondExample() async {
  var GetWaifu = EstraAniGames.InputLink = await EstraAniGames.waifu();
  print("Waifu Picture: $GetWaifu");
  print("Waifu Name: ${await EstraAniGames.waifu_name()}");
  // Just an reminder, you can't use two waifu_name function in once or it will return the same name!
}
