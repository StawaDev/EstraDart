import 'package:estradart/http.dart';

/// ### NSFW Class
/// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an NSFW endpoints functions.
/// ```dart
/// void main() async {
///  print(await EstraNSFW.kill());
///  print(await EstraNSFW.yuri());
///}
///```
class TypeNSFW {
  var Category = HttpManager.Category = "nsfw";

  /// Return Link Kill as GIFs
  kill() async {
    HttpManager.EndPoint = "kill";
    return await HttpManager.TypeLink();
  }

  /// Return Link Yuri as PNG
  yuri() async {
    HttpManager.EndPoint = "yuri";
    return await HttpManager.TypeLink();
  }

  /// Return Link Yaoi as PNG
  yaoi() async {
    HttpManager.EndPoint = "yaoi";
    return await HttpManager.TypeLink();
  }
}
