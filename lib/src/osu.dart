import 'package:estradart/http.dart';

/// ### Import OsuAPI Class
var OsuClients = new OsuAPI();

/// ### TypeOsu Class
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
  /// ### osuprofile
  /// This Function Requires the following parameters username, data, client_id, client_secret
  Future osuprofile(username, data, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoader();
  }

  /// ### osuprofile2
  /// This Function Requires the following parameters username, data, data2 client_id, client_secret
  Future osuprofile2(username, data, data2, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.data2 = "$data2";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoader2();
  }

  /// ### osuprofile3
  /// This Function Requires the following parameters username, data, data2, data3, client_id, client_secret
  Future osuprofile3(
      username, data, data2, data3, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.data2 = "$data2";
    OsuClients.data3 = "$data3";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoader3();
  }

  /// ### osuprofiledata
  /// This Function Requires the following parameters username, client_id, client_secret
  Future osuprofiledata(username, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoaderData();
  }

  /// ### osubeatmap
  /// This Function Requires the following parameters id, data, client_id, client_secret
  Future osubeatmap(beatmap_id, data, client_id, client_secret) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoader();
  }

  /// ### osubeatmap2
  /// This Function Requires the following parameters id, data, data2, client_id, client_secret
  Future osubeatmap2(beatmap_id, data, data2, client_id, client_secret) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.data2 = "$data2";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoader2();
  }

  /// ### osubeatmap
  /// This Function Requires the following parameters id, data, data2, data3, client_id, client_secret
  Future osubeatmap3(
      beatmap_id, data, data2, data3, client_id, client_secret) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.data2 = "$data2";
    OsuClients.data3 = "$data3";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoader3();
  }

  /// ### osubeatmapdata
  /// This Function Requires the following parameters id, client_id, client_secret
  Future osubeatmapdata(beatmap_id, client_id, client_secret) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoaderData();
  }
}
