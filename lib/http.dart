import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

/// Variable HttpManager Have A Function That Return Output
var HttpManager = new HttpManagers();

/// Class HttpManagers Have A Job That Will Return Output
class HttpManagers {
  var BASE_URL = "http://estra-api.herokuapp.com/api";
  var VER_BASE_URL = "http://estra-api.herokuapp.com/api";
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
