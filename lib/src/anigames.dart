import 'package:estradart/http.dart';

class TypeAniGames {
  var Category = HttpManager.Category = "anigames";
  truth() async {
    HttpManager.EndPoint = "truth";
    return await HttpManager.TypeText();
  }

  dare() async {
    HttpManager.EndPoint = "dare";
    return await HttpManager.TypeText();
  }

  waifu() async {
    HttpManager.EndPoint = "waifu";
    return await HttpManager.TypeLink();
  }

  husbando() async {
    HttpManager.EndPoint = "husbando";
    return await HttpManager.TypeLink();
  }
}
