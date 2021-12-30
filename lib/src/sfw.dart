import 'package:estradart/http.dart';

class TypeSFW {
  var Category = HttpManager.Category = "sfw";
  var BASE_URL = "http://estra-api.herokuapp.com/api/";

  hug() async {
    HttpManager.EndPoint = "hug";
    return await HttpManager.TypeLink();
  }

  run() async {
    HttpManager.EndPoint = "run";
    return await HttpManager.TypeLink();
  }

  smile() async {
    HttpManager.EndPoint = "smile";
    return await HttpManager.TypeLink();
  }

  headpat() async {
    HttpManager.EndPoint = "headpat";
    return await HttpManager.TypeLink();
  }

  neko() async {
    HttpManager.EndPoint = "neko";
    return await HttpManager.TypeLink();
  }

  bite() async {
    HttpManager.EndPoint = "bite";
    return await HttpManager.TypeLink();
  }

  highfive() async {
    HttpManager.EndPoint = "highfive";
    return await HttpManager.TypeLink();
  }

  poke() async {
    HttpManager.EndPoint = "poke";
    return await HttpManager.TypeLink();
  }

  slap() async {
    HttpManager.EndPoint = "slap";
    return await HttpManager.TypeLink();
  }
}
