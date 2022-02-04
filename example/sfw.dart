library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

void main() async {
  firstExample();
}

void firstExample() async {
  print(await Client.Sfw.hug(
      2)); // Generate 2 Hug Gifs, Output: Type List<String>
  print(await Client.Sfw.run());
  print(await Client.Sfw.headpat());
  // More EndPoint Use EstraHelp Function!
}
