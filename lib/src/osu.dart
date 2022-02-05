import 'package:estradart/http.dart';
import 'package:estradart/base.dart';

/// ### Osu Class
/// This is an simple class that can be used to get data from osu api and we make it easy to use!
///
/// ### Examples
/// ```
/// library Estra;
/// import 'package:estradart/estradart.dart';
/// var Client = new EstraClient();
///
/// var client_id = ""; //Puts your client_id osu key
/// var client_secret = ""; //Puts your client_secret osu key
///
/// void OsuDataClient() async {
///   Client.OsuClients.client_id = client_id;
///   Client.OsuClients.client_secret = client_secret;
///}
/// void main() async {
///   var profile = await Client.OsuClients.osuprofile("Stawa");
///   print(profile["avatar_url"]);
///   var format_profile = await Client.OsuClients.osuprofile("Stawa", true);
///   print("Formatted Profile: ${format_profile}");
///}
///```
class TypeOsu {
  var client_id;
  var client_secret;

  /// ### osuprofile
  /// This Function Requires the following parameters username, data, client_id, client_secret
  /// In this new update, we are not using any others functions like osuprofile123 anymore.
  /// We are currently returning a JSON Object Response
  Future osuprofile(username, [bool formatters = false]) async {
    OsuWrapper.ids = "$username";
    OsuWrapper.client_id = "$client_id";
    OsuWrapper.client_secret = "$client_secret";
    OsuWrapper.typeosu = "osu";
    OsuWrapper.data_endpoint = "user";

    var a = await OsuWrapper.OsuLoader();
    if (formatters) {
      return await formatter(a);
    }
    return a;
  }

  /// ### osubeatmap
  /// This Function Requires the following parameters id, data, client_id, client_secret
  /// In this new update, we are not using any others functions like osuprofile123 anymore.
  /// We are currently returning a JSON Object Response
  Future osubeatmap(beatmap_id, [bool formatters = false]) async {
    OsuWrapper.ids = "$beatmap_id";
    OsuWrapper.client_id = "$client_id";
    OsuWrapper.client_secret = "$client_secret";
    OsuWrapper.typeosu = "osubeatmap";
    OsuWrapper.data_endpoint = "id";

    var a = await OsuWrapper.OsuLoader();
    if (formatters) {
      return await formatter(a);
    }
    return a;
  }
}
