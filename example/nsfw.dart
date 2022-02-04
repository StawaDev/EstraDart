library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

void main() async {
  firstExample();
}

void firstExample() async {
  print(await Client.Nsfw.kill(
      2)); // Generate 2 Hug Gifs, Output: Type List<String>
  print(await Client.Nsfw.yuri());
  // More EndPoint Use EstraHelp Function!
}
