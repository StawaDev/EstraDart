import 'package:estradart/http.dart';

/// ### Data Class
/// This is an data class that returning total image or text in specific endpoints
class Data {
  totalSfw(EndPoint) async {
    HttpManager.Category = "sfw";
    HttpManager.EndPoint = "$EndPoint";
    HttpManager.TypeFunction = "image";
    return await HttpManager.TypeTotal();
  }

  totalNsfw(EndPoint) async {
    HttpManager.Category = "nsfw";
    HttpManager.EndPoint = "$EndPoint";
    HttpManager.TypeFunction = "image";
    return await HttpManager.TypeTotal();
  }

  totalGames(EndPoint) async {
    HttpManager.Category = "games";
    HttpManager.EndPoint = "$EndPoint";
    HttpManager.TypeFunction = "text";
    return await HttpManager.TypeTotal();
  }

  totalAniGames(EndPoint) async {
    HttpManager.Category = "anigames";
    var Endpoint = HttpManager.EndPoint = "$EndPoint";

    var Type_Text = ["truth", "dare"];

    if (Type_Text.contains(Endpoint)) {
      HttpManager.TypeFunction = "text";
    } else {
      HttpManager.TypeFunction = "image";
    }
    return await HttpManager.TypeTotal();
  }
}
