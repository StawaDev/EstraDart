library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  firstExample();
}

void firstExample() async {
  print(await EstraGames.truth());
  print(await EstraGames.dare());
  // More EndPoint Use EstraHelp Function!
}
