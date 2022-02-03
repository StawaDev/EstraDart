library Estra;

import 'package:estradart/estradart.dart';

var client_id = "11944"; //Puts your client_id osu key
var client_secret =
    "2JazZLgf4KB1JnrZPlyUWYcdQFXn1b7nGM7dm2KE"; //Puts your client_secret osu key

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
  var format_profile = await Osu.osuprofile("Stawa", true);
  print("Formatted Profile: ${format_profile}");
}

void secondExample() async {
  var beatmap = await Osu.osubeatmap("2405223");
  print("Beatmap Artist: ${beatmap['beatmapset']['artist']}");
  var format_beatmap = await Osu.osubeatmap("2405223", true);
  print("Formatted Beatmap: ${format_beatmap}");
}
