library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  print("Total Image of Sfw Poke : ${await EstraData.totalSfw("poke")}");
  print("Total Image of Nsfw Yuri : ${await EstraData.totalNsfw("yuri")}");
  print(
      "Total Text of Truth Challenge : ${await EstraData.totalGames("truth")}");
  print(
      "Total Text of AniGames Truth Challenge : ${await EstraData.totalAniGames("truth")}");
}
