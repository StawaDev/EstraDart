import 'dart:io';
import 'package:estradart/http.dart';
import 'dart:convert';

/// Re-provides an HTTP client that can be used to make requests to the API.
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

/// Formatting JSON Object
formatter(output) async {
  var encoder = new JsonEncoder.withIndent("     ");
  return encoder.convert(output);
}

/// Downloading an Image file from url with custom filename.
/// Works on any platform.
downloadImage(url, filename) async {
  await HttpManager.get(url).then((response) {
    new File("${Directory.current.path}\\$filename.png")
        .writeAsBytes(response.bodyBytes);
  });
}

/// Opening an Image file from current working directory with default application
/// Only works on Windows currently.
openImageDirectory(filename) async {
  var file = new File("${Directory.current.path}\\$filename.png");
  if (await file.exists()) {
    await Process.run("explorer.exe", [file.path]);
  } else {
    print("File not found!");
  }
}

/// Opening an Temp Image file from current working directory with default application, It will get deleted after 10 seconds
/// Only works on Windows currently.
openImageTemp(url) async {
  await downloadImage(url, "Temp");
  await openImageDirectory("Temp");
  var file = new File("${Directory.current.path}\\Temp.png");
  await new Future.delayed(const Duration(seconds: 10));
  if (await file.exists()) {
    await file.delete();
    return "File Temp.png has been deleted!";
  }
}
