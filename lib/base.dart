import 'package:estradart/http.dart';
import 'dart:convert';

produce(category, endpoint, type, total) async {
  if (total > 10) {
    return "Total must be lower than 10!";
  } else if (total < 1 & 0) {
    return "Total must be greater than 1";
  }

  HttpManager.EndPoint = endpoint;
  HttpManager.Category = category;
  var list = [];
  try {
    for (int i = 0; i < total; i++) {
      if (type == "link") {
        var link = await HttpManager.TypeLink();
        list.add(link);
      } else if (type == "text") {
        var text = await HttpManager.TypeText();
        list.add(text);
      }
    }
  } catch (e) {
    return e;
  }
  return list;
}

formatter(output) async {
  var encoder = new JsonEncoder.withIndent("     ");
  return encoder.convert(output);
}
