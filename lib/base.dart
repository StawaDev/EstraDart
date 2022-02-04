import 'dart:io';
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

downloadImage() async {
  await HttpManager.get(
          "https://i.picsum.photos/id/866/200/300.jpg?hmac=rcadCENKh4rD6MAp6V_ma-AyWv641M4iiOpe1RyFHeI")
      .then((response) {
    new File("./test123.png").writeAsBytes(response.bodyBytes);
  });
}
