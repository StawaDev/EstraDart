import 'package:estradart/base.dart';
import 'package:estradart/http.dart';

const size = {
  "width": 1920,
  "height": 1080,
};

/// ### Games Class
/// Games Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
/// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
///
/// ### Examples
/// This is an simple example of an Games endpoints functions.
/// ```dart
/// library Estra;
/// import 'package:estradart/estradart.dart';
/// var Client = new EstraClient();
///
/// void main() async {
///   print(await Client.Games.truth(2));
///   print(await Client.Games.dare());
///}
///```
class TypeGames {
  var Category = HttpManager.Category = "games";

  /// Return Truth as Text
  /// ### Generate Examples
  /// In here you can actually generate more than one Text! Max 10. And Of course, it will return a list type.
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// var Client = new EstraClient();
  /// void main() async {
  ///   print(await Client.Games.truth(5));
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
  /// In here you can actually generate more than one Text! Max 10. And Of course, it will return a list type.
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// var Client = new EstraClient();
  /// void main() async {
  ///   print(await Client.Games.dare(5));
  /// }
  /// ```
  dare([int generate = 0]) async {
    HttpManager.EndPoint = "dare";
    if (generate > 1) {
      return produce(Category, "dare", "text", generate);
    }
    return await HttpManager.TypeText();
  }

  /// Setup Data For Shipper Function.
  /// ### Simple Setup Example
  /// ```
  /// var Client = TypeGames();
  /// const size = {
  ///   "width": "1280",
  ///   "height": "720",
  ///};
  /// void main() {
  ///   var data = await Client.Games.setupShipper("Player", "Player_Image", "Player2", "Player2_Image", "Background", size);
  /// }
  ///```
  setupShipper(
      [String player = "None",
      String player_image = "None",
      String player2 = "None",
      String player2_image = "None",
      String background = "None",
      Map background_size = size]) async {
    var width = background_size["width"];
    var height = background_size["height"];
    var url =
        "$BASE_URL/games/shipper/image/?player=$player&player_image=$player_image&player2=$player2&player2_image=$player2_image&background=$background&background_size=${width}x$height";
    return url;
  }

  /// Return Shipper as Image
  /// ### Shipper Examples
  /// ```
  /// void main() async {
  ///   print(await Client.Games.shipper(await data, false, false, true));
  /// }
  /// ```
  shipper(
      [url = "None",
      bool openImageOnly = false,
      bool downloadImageOnly = false,
      bool downloadOpenImage = false]) async {
    if (openImageOnly) {
      return await openImageTemp(url);
    }
    if (downloadImageOnly) {
      return await downloadImage(url, "shipper");
    }
    if (downloadOpenImage) {
      await downloadImage(url, "shipper");
      await openImageDirectory("shipper");
      return "Downloaded and Opened Shipper File!";
    }
  }
}
