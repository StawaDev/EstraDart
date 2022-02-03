library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  firstExample();
}

void firstExample() async {
  print(
      "Truth Challenge: ${await EstraGames.truth(3)}"); // Generate 3 Truth Text, Output: Type List<String>
  print(
      "Dare Challenge: ${await EstraGames.dare(2)}"); // Generate 2 Dare Text, Output: Type List<String>
  // More EndPoint Use EstraHelp Function!
}
