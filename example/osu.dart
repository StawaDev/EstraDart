library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

var client_id = ""; //Puts your client_id osu key
var client_secret = ""; //Puts your client_secret osu key

void OsuDataClient() async {
  Client.OsuClients.client_id = client_id;
  Client.OsuClients.client_secret = client_secret;
}

void main() async {
  OsuDataClient(); // REQUIRED TO INCLUDE DATA.
  firstExample();
  secondExample();
}

void firstExample() async {
  var profile = await Client.OsuClients.osuprofile("Stawa");
  print(profile["avatar_url"]);
  var format_profile = await Client.OsuClients.osuprofile("Stawa", true);
  print("Formatted Profile: ${format_profile}");
}

void secondExample() async {
  var beatmap = await Client.OsuClients.osubeatmap("2405223");
  print("Beatmap Artist: ${beatmap['beatmapset']['artist']}");
  var format_beatmap = await Client.OsuClients.osubeatmap("2405223", true);
  print("Formatted Beatmap: ${format_beatmap}");
}
