import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';
import 'estrahelp.dart' as Lister;

var SFW = Lister.SFW;
var NSFW = Lister.NSFW;
var AniGames = Lister.AniGamesList;
var AniGames_Type_Link = Lister.AniGames_Type_Link;
var Games = Lister.GamesList;

class Estra {
  var typeCat;
  var endPoint;

  outputJSON() async {
    final base = RetryClient(http.Client());
    try {
      String outputJSON = await base.read(Uri.parse(
          "http://estra-api.herokuapp.com/api/${typeCat}/${endPoint}"));
      if (SFW.contains(endPoint)) {
        return jsonDecode(outputJSON)["link"];
      } else if (NSFW.contains(endPoint)) {
        return jsonDecode(outputJSON)["link"];
      } else if (AniGames.contains(endPoint)) {
        if (AniGames_Type_Link.contains(endPoint)) {
          return jsonDecode(outputJSON)["link"];
        } else {
          return jsonDecode(outputJSON)["text"];
        }
      } else if (Games.contains(endPoint)) {
        return jsonDecode(outputJSON)["text"];
      }
    } finally {
      base.close();
    }
  }
}
