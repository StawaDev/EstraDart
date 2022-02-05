library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

void main() async {
  firstExample();
  secondExample();
}

void firstExample() async {
  print(
      "Truth Challenge: ${await Client.Games.truth(3)}"); // Generate 3 Truth Text, Output: Type List<String>
  print(
      "Dare Challenge: ${await Client.Games.dare(2)}"); // Generate 2 Dare Text, Output: Type List<String>
  // More EndPoint Use EstraHelp Function!
}

void secondExample() async {
  const size = {
    "width": "1280",
    "height": "720",
  };
  var data = await Client.Games.setupShipper(
      "Player", "Player_Image", "Player2", "Player2_Image", "Background", size);

  print(data);
  print(await Client.Games.shipper(await data, true, false, false));
}
