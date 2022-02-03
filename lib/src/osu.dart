import 'package:estradart/http.dart';

/// ### Import OsuAPI Class
var OsuClients = new OsuAPI();

/// ### Osu Class
/// This is an simple class that can be used to get data from osu api and we make it easy to use!
///
/// ### Examples
/// ```
/// void main() async {
///  var client_id = ""; //Puts your client_id osu key
///  var client_secret = ""; //Puts your client_secret osu key
///  print(await Osu.osuprofile("Stawa", "avatar_url", client_id,
///      client_secret)); // The "avatar_url" was the key from a value JSON Response
///  print(await Osu.osuprofiledata(
///      "Stawa", client_id, client_secret)); // Print all data from JSON Response
///}
///```
class TypeOsu {
  var client_id;
  var client_secret;

  /// ### osuprofile
  /// This Function Requires the following parameters username, data, client_id, client_secret
  /// In this new update, we are not using any others functions like osuprofile123 anymore.
  /// We are currently returning a JSON Object Response
  Future osuprofile(username) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoader();
  }

  /// ### osubeatmap
  /// This Function Requires the following parameters id, data, client_id, client_secret
  /// In this new update, we are not using any others functions like osuprofile123 anymore.
  /// We are currently returning a JSON Object Response
  Future osubeatmap(beatmap_id) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoader();
  }
}
