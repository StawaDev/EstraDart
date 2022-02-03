import 'package:estradart/http.dart';
import 'package:estradart/base.dart';

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
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.hug(5));
  /// }
  /// ```
  hug([int generate = 0]) async {
    HttpManager.EndPoint = "hug";
    if (generate > 1) {
      return produce(Category, "hug", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Run as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.run(5));
  /// }
  /// ```
  run([int generate = 0]) async {
    HttpManager.EndPoint = "run";
    if (generate > 1) {
      return produce(Category, "run", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Smile as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.smile(5));
  /// }
  /// ```
  smile([int generate = 0]) async {
    HttpManager.EndPoint = "smile";
    if (generate > 1) {
      return produce(Category, "smile", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Headpat as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.headpat(5));
  /// }
  /// ```
  headpat([int generate = 0]) async {
    HttpManager.EndPoint = "headpat";
    if (generate > 1) {
      return produce(Category, "headpat", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Neko as PNG
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.neko(5));
  /// }
  /// ```
  neko([int generate = 0]) async {
    HttpManager.EndPoint = "neko";
    if (generate > 1) {
      return produce(Category, "neko", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Bite as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.bite(5));
  /// }
  /// ```
  bite([int generate = 0]) async {
    HttpManager.EndPoint = "bite";
    if (generate > 1) {
      return produce(Category, "bite", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Highfive as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.highfive(5));
  /// }
  /// ```
  highfive([int generate = 0]) async {
    HttpManager.EndPoint = "highfive";
    if (generate > 1) {
      return produce(Category, "highfive", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Poke as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.poke(5));
  /// }
  /// ```
  poke([int generate = 0]) async {
    HttpManager.EndPoint = "poke";
    if (generate > 1) {
      return produce(Category, "poke", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Slap as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraSFW.slap(5));
  /// }
  /// ```
  slap([int generate = 0]) async {
    HttpManager.EndPoint = "slap";
    if (generate > 1) {
      return produce(Category, "slap", "link", generate);
    }
    return await HttpManager.TypeLink();
  }
}
