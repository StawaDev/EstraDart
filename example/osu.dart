library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  var client_id = ""; //Puts your client_id osu key
  var client_secret = ""; //Puts your client_secret osu key
  print(await Osu.osuprofile("Stawa", "avatar_url", client_id,
      client_secret)); // The "avatar_url" was the key from a value JSON Response
  print(await Osu.osuprofiledata(
      "Stawa", client_id, client_secret)); // Print all data from JSON Response
}
