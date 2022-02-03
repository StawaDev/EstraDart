library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  firstExample();
}

void firstExample() async {
  print(
      await EstraSFW.hug(2)); // Generate 2 Hug Gifs, Output: Type List<String>
  print(await EstraSFW.run());
  print(await EstraSFW.headpat());
  // More EndPoint Use EstraHelp Function!
}
