library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

// Available endpoints "All, Sfw, Nsfw, AniGames, Nsfw"
void main() {
  print(Client.Help.Sfw());
  print(Client.Help.Nsfw());
  print(Client.Help.AniGames());
  print(Client.Help.Games());
  print(Client.Help.All());
}
