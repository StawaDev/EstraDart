import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

class Estra {
  var typeCat;
  var endPoint;

  outputJSON() async {
    final base = RetryClient(http.Client());
    try {
      String outputJSON = await base.read(Uri.parse(
          "http://estra-api.herokuapp.com/api/${typeCat}/${endPoint}"));
      if (typeCat == "sfw") {
        return jsonDecode(outputJSON)["link"];
      } else if (typeCat == "nsfw") {
        return jsonDecode(outputJSON)["link"];
      } else if (typeCat == "games") {
        return jsonDecode(outputJSON)["text"];
      } else if (typeCat == "anigames") {
        if (endPoint == "truth") {
          return jsonDecode(outputJSON)["text"];
        } else if (endPoint == "dare") {
          return jsonDecode(outputJSON)["text"];
        } else if (endPoint == "waifu") {
          return jsonDecode(outputJSON)["link"];
        } else if (endPoint == "husbando") {
          return jsonDecode(outputJSON)["link"];
        }
      }
    } finally {
      base.close();
    }
  }
}
