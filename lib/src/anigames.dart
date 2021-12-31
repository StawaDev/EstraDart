import 'package:estradart/http.dart';

/// ### AniGames Class
/// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an AniGame EndPoints Function.
/// ```dart
/// void main() async {
///  print(await EstraAniGames.truth());
///  print(await EstraAniGames.waifu());
///}
///```
class TypeAniGames {
  var Category = HttpManager.Category = "anigames";
  var InputLink;

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

  /// Return Waifu as PNG
  waifu() async {
    HttpManager.EndPoint = "waifu";
    return await HttpManager.TypeLink();
  }

  /// Return Truth as PNG
  husbando() async {
    HttpManager.EndPoint = "husbando";
    return await HttpManager.TypeLink();
  }

  /// Return Waifu Characters Name as Text
  Future waifu_name() async {
    try {
      var GetName = InputLink.replaceAll(
          "https://estra-source.herokuapp.com/assets/images/Waifu/", "");
      if (GetName.contains(".jpeg")) {
        var RemoveType = GetName.replaceAll(".jpeg", "");
        var WaifuName = RemoveType.replaceAll("-", " ");
        return WaifuName;
      } else if (GetName.contains(".png")) {
        var RemoveType = GetName.replaceAll(".png", "");
        var WaifuName = RemoveType.replaceAll("-", " ");
        return WaifuName;
      } else if (GetName.contains(".jpg")) {
        var RemoveType = GetName.replaceAll(".jpg", "");
        var WaifuName = RemoveType.replaceAll("-", " ");
        return WaifuName;
      }
    } catch (e) {
      return e;
    }
  }

  Future husbando_name() async {
    try {
      var GetName = InputLink.replaceAll(
          "https://estra-source.herokuapp.com/assets/images/Husbando/", "");
      if (GetName.contains(".jpeg")) {
        var RemoveType = GetName.replaceAll(".jpeg", "");
        var HusbandoName = RemoveType.replaceAll("-", " ");
        return HusbandoName;
      } else if (GetName.contains(".png")) {
        var RemoveType = GetName.replaceAll(".png", "");
        var HusbandoName = RemoveType.replaceAll("-", " ");
        return HusbandoName;
      } else if (GetName.contains(".jpg")) {
        var RemoveType = GetName.replaceAll(".jpg", "");
        var HusbandoName = RemoveType.replaceAll("-", " ");
        return HusbandoName;
      }
    } catch (e) {
      return e;
    }
  }
}
