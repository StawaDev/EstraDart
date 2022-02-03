library Estra;

import 'package:estradart/estradart.dart';

var client_id = ""; //Puts your client_id osu key
var client_secret = ""; //Puts your client_secret osu key

void OsuDataClient() async {
  Osu.client_id = client_id;
  Osu.client_secret = client_secret;
}

void main() async {
  OsuDataClient(); // REQUIRED TO INCLUDE DATA.
  firstExample();
  secondExample();
}

void firstExample() async {
  var profile = await Osu.osuprofile("Stawa");
  print(profile["avatar_url"]);
}

void secondExample() async {
  var beatmap = await Osu.osubeatmap("2405223");
  print("Beatmap Artist: ${beatmap['beatmapset']['artist']}");
}
