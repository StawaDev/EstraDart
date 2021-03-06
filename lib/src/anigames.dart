import 'package:estradart/base.dart';
import 'package:estradart/http.dart';

/// ### AniGames Class
/// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an AniGame EndPoints Function.
/// ```dart
/// library Estra;
/// import 'package:estradart/estradart.dart';
/// var Client = new EstraClient();
///
/// void main() async {
///   print(await Client.AniGames.truth());
///   print(await Client.AniGames.waifu());
///}
///```
class TypeAniGames {
  var Category = HttpManager.Category = "anigames";

  /// Return Truth as Text
  truth([int generate = 0]) async {
    HttpManager.EndPoint = "truth";
    if (generate > 1) {
      return produce(Category, "truth", "text", generate);
    }
    return await HttpManager.TypeText();
  }

  /// Return Dare as Text
  dare([int generate = 0]) async {
    HttpManager.EndPoint = "dare";
    if (generate > 1) {
      return produce(Category, "dare", "text", generate);
    }
    return await HttpManager.TypeText();
  }

  /// Return Waifu as PNG
  waifu([bool formatters = false]) async {
    HttpManager.EndPoint = "waifu";
    if (formatters == true) {
      return formatter(await HttpManager.AllData());
    }
    return await HttpManager.AllData();
  }

  /// Return Husbando as PNG
  husbando([bool formatters = false]) async {
    HttpManager.EndPoint = "husbando";
    if (formatters == true) {
      return formatter(await HttpManager.AllData());
    }
    return await HttpManager.AllData();
  }

  /// Return Shipper Waifu as Text
  shipper_waifu([String player = "None", bool formatters = false]) async {
    HttpManager.EndPoint = "shipper/waifu/?player=$player";
    if (formatters == true) {
      return formatter(await HttpManager.AllData());
    }
    return await HttpManager.AllData();
  }

  /// Return Shipper Husbando as Text
  shipper_husbando([String player = "None", bool formatters = false]) async {
    HttpManager.EndPoint = "shipper/husbando?player=$player";
    if (formatters == true) {
      return formatter(await HttpManager.AllData());
    }
    return await HttpManager.AllData();
  }
}
