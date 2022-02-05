import 'package:estradart/http.dart';
import 'package:estradart/base.dart';

/// ### NSFW Class
/// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an NSFW endpoints functions.
/// ```dart
/// library Estra;
/// import 'package:estradart/estradart.dart';
/// var Client = new EstraClient();
///
/// void main() async {
///   print(await Client.Nsfw.kill());
///   print(await Client.Nsfw.yuri());
///}
///```
class TypeNSFW {
  var Category = HttpManager.Category = "nsfw";

  /// Return Link Kill as GIFs
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// var Client = new EstraClient();
  ///
  /// void main() async {
  ///   print(await Client.Nsfw.kill(5));
  /// }
  /// ```
  kill([int generate = 0]) async {
    HttpManager.EndPoint = "kill";
    if (generate > 1) {
      return produce(Category, "kill", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Yuri as PNG
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// var Client = new EstraClient();
  ///
  /// void main() async {
  ///   print(await Client.Nsfw.yuri(5));
  /// }
  /// ```
  yuri([int generate = 0]) async {
    HttpManager.EndPoint = "yuri";
    if (generate > 1) {
      return produce(Category, "yuri", "link", generate);
    }
    return await HttpManager.TypeLink();
  }

  /// Return Link Yaoi as PNG
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// var Client = new EstraClient();
  ///
  /// void main() async {
  ///   print(await Client.Nsfw.yaoi(5));
  /// }
  /// ```
  yaoi([int generate = 0]) async {
    HttpManager.EndPoint = "yaoi";
    if (generate > 1) {
      return produce(Category, "yaoi", "link", generate);
    }
    return await HttpManager.TypeLink();
  }
}
