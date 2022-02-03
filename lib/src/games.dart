import 'package:estradart/base.dart';
import 'package:estradart/http.dart';

/// ### Games Class
/// Games Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an Games endpoints functions.
/// ```dart
/// void main() async {
/// print(await EstraGames.truth());
///  print(await EstraGames.dare());
///}
///```
class TypeGames {
  var Category = HttpManager.Category = "games";

  /// Return Truth as Text
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraGames.truth(5));
  /// }
  /// ```
  truth([int generate = 0]) async {
    HttpManager.EndPoint = "truth";
    if (generate > 1) {
      return produce(Category, "truth", "text", generate);
    }
    return await HttpManager.TypeText();
  }

  /// Return Dare as Text
  /// ### Generate Examples
  /// In here you can actually generate more than one GIF! Max 10. And Of course, it will return a list type.
  /// ```
  /// void main() async {
  ///   print(await EstraGames.dare(5));
  /// }
  /// ```
  dare([int generate = 0]) async {
    HttpManager.EndPoint = "dare";
    if (generate > 1) {
      return produce(Category, "dare", "text", generate);
    }
    return await HttpManager.TypeText();
  }
}
