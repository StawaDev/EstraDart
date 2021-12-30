import 'package:estradart/http.dart';

/**
 * ### AniGames Class
 * AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
 * But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
 *
 * ### Examples
 * This is an simple example of an AniGame EndPoints Function.
 * ```dart
 * void main() async {
 *  print(await EstraAniGames.truth());
 *  print(await EstraAniGames.waifu());
 *}
 *```
 */
class TypeAniGames {
  var Category = HttpManager.Category = "anigames";

  /**
   * Return Truth as Text
   */
  truth() async {
    HttpManager.EndPoint = "truth";
    return await HttpManager.TypeText();
  }

  /**
   * Return Dare as Text
   */
  dare() async {
    HttpManager.EndPoint = "dare";
    return await HttpManager.TypeText();
  }

  /**
   * Return Waifu as PNG
   */
  waifu() async {
    HttpManager.EndPoint = "waifu";
    return await HttpManager.TypeLink();
  }

  /**
   * Return Truth as PNG
   */
  husbando() async {
    HttpManager.EndPoint = "husbando";
    return await HttpManager.TypeLink();
  }
}
