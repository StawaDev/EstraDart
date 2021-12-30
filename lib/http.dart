import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

/// Variable HttpManager Have A Function That Return Output
var HttpManager = new HttpManagers();

/// Class HttpManagers Have A Job That Will Return Output
class HttpManagers {
  var BASE_URL = "http://estra-api.herokuapp.com/api";
  var Category;
  var EndPoint;

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
          await base.read(Uri.parse("$BASE_URL/{$Category}/{$EndPoint}"));
      return jsonDecode(DataText)["text"];
    } finally {
      base.close();
    }
  }
}
