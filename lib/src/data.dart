import 'package:estradart/http.dart';

/// ### Data Class
/// This is an data class that returning total image or text in specific endpoints
class Data {
  /// Return Total Image from JSON Requests
  totalSfw(EndPoint) async {
    HttpManager.Category = "sfw";
    HttpManager.EndPoint = "$EndPoint";
    HttpManager.TypeFunction = "image";
    return await HttpManager.TypeTotal();
  }

  /// Return Total Image from JSON Requests
  totalNsfw(EndPoint) async {
    HttpManager.Category = "nsfw";
    HttpManager.EndPoint = "$EndPoint";
    HttpManager.TypeFunction = "image";
    return await HttpManager.TypeTotal();
  }

  /// Return Total Text from JSON Requests
  totalGames(EndPoint) async {
    HttpManager.Category = "games";
    HttpManager.EndPoint = "$EndPoint";
    HttpManager.TypeFunction = "text";
    return await HttpManager.TypeTotal();
  }

  /// Return Total Image/Text from JSON Requests
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

  /// Return Current Up to Date Versions of EstraDart from JSON Requests
  version() async {
    return await HttpManager.Version();
  }
}
