library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  firstExample();
}

void firstExample() async {
  print("Truth Challenge: ${await EstraGames.truth()}");
  print("Dare Challenge: ${await EstraGames.dare()}");
  // More EndPoint Use EstraHelp Function!
}
