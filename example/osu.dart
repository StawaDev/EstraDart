library Estra;

import 'package:estradart/estradart.dart';

var client_id = ""; //Puts your client_id osu key
var client_secret = ""; //Puts your client_secret osu key

void main() async {
  fourthExample();
}

void firstExample() async {
  print(await Osu.osuprofile("Stawa", "avatar_url", client_id,
      client_secret)); // The "avatar_url" was the key from a value JSON Response
  print(await Osu.osuprofiledata(
      "Stawa", client_id, client_secret)); // Print all data from JSON Response
}

void secondExample() async {
  print(await Osu.osubeatmapdata(
      "2405223", client_id, client_secret)); // Print all data from
  print(await Osu.osubeatmap("2405223", "status", client_id,
      client_secret)); // The "avatar_url" was the key from a value JSON Response
}

void thirdExample() async {
  print(await Osu.osuprofile2(
      "Stawa", "country", "name", client_id, client_secret));
  print(await Osu.osubeatmap2(
      "2405223", "beatmapset", "artist", client_id, client_secret));
}

void fourthExample() async {
  print(await Osu.osuprofile3(
      "Stawa", "statistics", "grade_counts", "sh", client_id, client_secret));
  print(await Osu.osubeatmap3(
      "2405223", "beatmapset", "covers", "cover", client_id, client_secret));
}
