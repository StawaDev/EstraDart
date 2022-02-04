library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

void main() async {
  print("Total Image of Sfw Poke : ${await Client.Data.totalSfw("poke")}");
  print("Total Image of Nsfw Yuri : ${await Client.Data.totalNsfw("yuri")}");
  print(
      "Total Text of Truth Challenge : ${await Client.Data.totalGames("truth")}");
  print(
      "Total Text of AniGames Truth Challenge : ${await Client.Data.totalAniGames("truth")}");
  print("Version: ${await Client.Data.version()}");
}
