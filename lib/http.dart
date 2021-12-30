import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/retry.dart';

var HttpManager = new HttpManagers();

class HttpManagers {
  var BASE_URL = "http://estra-api.herokuapp.com/api";
  var Category;
  var EndPoint;

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
