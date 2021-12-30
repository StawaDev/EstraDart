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
  truth() async {
    HttpManager.EndPoint = "truth";
    return await HttpManager.TypeText();
  }

  /// Return Dare as Text
  dare() async {
    HttpManager.EndPoint = "dare";
    return await HttpManager.TypeText();
  }
}
