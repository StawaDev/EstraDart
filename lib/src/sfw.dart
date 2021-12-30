import 'package:estradart/http.dart';

/// ### SFW Class
/// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an SFW endpoints functions.
/// ```dart
/// void main() async {
///  print(await EstraSFW.poke());
///  print(await EstraSFW.run());
///}
///```
class TypeSFW {
  var Category = HttpManager.Category = "sfw";
  var BASE_URL = "http://estra-api.herokuapp.com/api/";

  /// Return Link Hug as GIFs
  hug() async {
    HttpManager.EndPoint = "hug";
    return await HttpManager.TypeLink();
  }

  /// Return Link Run as GIFs
  run() async {
    HttpManager.EndPoint = "run";
    return await HttpManager.TypeLink();
  }

  /// Return Link Smile as GIFs
  smile() async {
    HttpManager.EndPoint = "smile";
    return await HttpManager.TypeLink();
  }

  /// Return Link Headpat as GIFs
  headpat() async {
    HttpManager.EndPoint = "headpat";
    return await HttpManager.TypeLink();
  }

  /// Return Link Neko as PNG
  neko() async {
    HttpManager.EndPoint = "neko";
    return await HttpManager.TypeLink();
  }

  /// Return Link Bite as GIFs
  bite() async {
    HttpManager.EndPoint = "bite";
    return await HttpManager.TypeLink();
  }

  /// Return Link Highfive as GIFs
  highfive() async {
    HttpManager.EndPoint = "highfive";
    return await HttpManager.TypeLink();
  }

  /// Return Link Poke as GIFs
  poke() async {
    HttpManager.EndPoint = "poke";
    return await HttpManager.TypeLink();
  }

  /// Return Link Slap as GIFs
  slap() async {
    HttpManager.EndPoint = "slap";
    return await HttpManager.TypeLink();
  }
}
