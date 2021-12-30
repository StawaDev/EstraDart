import 'package:estradart/http.dart';

class TypeNSFW {
  var Category = HttpManager.Category = "nsfw";
  kill() async {
    HttpManager.EndPoint = "kill";
    return await HttpManager.TypeLink();
  }

  yuri() async {
    HttpManager.EndPoint = "kill";
    return await HttpManager.TypeLink();
  }

  yaoi() async {
    HttpManager.EndPoint = "kill";
    return await HttpManager.TypeLink();
  }
}
