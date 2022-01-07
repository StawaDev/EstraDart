import 'package:estradart/http.dart';

var OsuClients = new OsuAPI();
var Osu = new TypeOsu();

class TypeOsu {
  Future osuprofile(username, data, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoader();
  }

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

  Future osuprofiledata(username, client_id, client_secret) async {
    OsuClients.ids = "$username";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.typeosu = "osu";
    OsuClients.data_endpoint = "user";
    return await OsuClients.OsuLoaderData();
  }

  Future osubeatmap(beatmap_id, data, client_id, client_secret) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.data = "$data";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoader();
  }

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

  Future osubeatmapdata(beatmap_id, client_id, client_secret) async {
    OsuClients.ids = "$beatmap_id";
    OsuClients.client_id = "$client_id";
    OsuClients.client_secret = "$client_secret";
    OsuClients.typeosu = "osubeatmap";
    OsuClients.data_endpoint = "id";
    return await OsuClients.OsuLoaderData();
  }
}
