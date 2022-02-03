import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

/// Variable HttpManager Have A Function That Return Output
var HttpManager = new HttpManagers();
var OsuClients = new OsuAPI();

/// Class HttpManagers Have A Job That Will Return Output
class HttpManagers {
  var BASE_URL = "https://estra-api.herokuapp.com/api";
  var VER_BASE_URL = "https://estra-api.herokuapp.com/api";
  var Category;
  var EndPoint;
  var TypeFunction;

  /// Return Link From JSON Request
  TypeLink() async {
    final base = RetryClient(http.Client());
    try {
      String DataLink =
          await base.read(Uri.parse("$BASE_URL/$Category/$EndPoint"));
      return jsonDecode(DataLink)["link"];
    } finally {
      base.close();
    }
  }

  /// Return Text From JSON Request
  TypeText() async {
    final base = RetryClient(http.Client());
    try {
      String DataText =
          await base.read(Uri.parse("$BASE_URL/$Category/$EndPoint"));
      return jsonDecode(DataText)["text"];
    } finally {
      base.close();
    }
  }

  /// Return Total Data From JSON Request
  TypeTotal() async {
    final base = RetryClient(http.Client());
    try {
      String DataText =
          await base.read(Uri.parse("$BASE_URL/$Category/$EndPoint"));
      if (TypeFunction == "image") {
        return jsonDecode(DataText)["total_image"];
      } else if (TypeFunction == "text") {
        return jsonDecode(DataText)["total_text"];
      }
    } finally {
      base.close();
    }
  }

  /// Return Up to Date Version of EstraDart From JSON Request
  Version() async {
    final base = RetryClient(http.Client());
    try {
      return jsonDecode(await base.read(Uri.parse("$VER_BASE_URL/version")))[
          "EstraDart"]["Version"];
    } finally {
      base.close();
    }
  }
}

/// Class OsuAPI Is A Simple Class That Will Return a Response of OSU API
class OsuAPI {
  var BASE_URL = "https://estra-api.herokuapp.com/api";
  var ids;
  var client_id;
  var client_secret;
  var data_endpoint;
  var typeosu;

  /// Return Specific ONE Value from JSON Object
  OsuLoader() async {
    final base = RetryClient(http.Client());
    try {
      String DataText = await base.read(Uri.parse(
          "$BASE_URL/$typeosu/?$data_endpoint=$ids&client_id=$client_id&client_secret=$client_secret"));
      return jsonDecode(DataText);
    } finally {
      base.close();
    }
  }
}
