import 'package:estradart/estrahelp.dart';

// Available endpoints "All, Sfw, Nsfw, AniGames, Nsfw"
void main() async {
  var Helper = new Help();
  print(Helper.Sfw());
  print(Helper.Nsfw());
  print(Helper.AniGames());
  print(Helper.All());
}
