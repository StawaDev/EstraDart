import 'package:estradart/http.dart';

class TypeGames {
  var Category = HttpManager.Category = "games";
  truth() async {
    HttpManager.EndPoint = "truth";
    return await HttpManager.TypeText();
  }

  dare() async {
    HttpManager.EndPoint = "dare";
    return await HttpManager.TypeText();
  }
}
