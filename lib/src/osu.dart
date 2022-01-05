import 'package:estradart/http.dart';

var OsuClients = new OsuAPI();
var Osu = new TypeOsu();

class TypeOsu {
  Future osuprofile(username, data, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoader();
  }

  Future osuprofiledata(username, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoaderData();
  }

  osubeatmap() async {
    OsuClients.data_endpoint = "id";
    return;
  }
}
