import 'src/sfw.dart';
import 'src/nsfw.dart';
import 'src/anigames.dart';
import 'src/games.dart';
import 'src/estrahelp.dart';
import 'src/data.dart';
import 'src/reminder.dart';
import 'src/osu.dart';

class EstraClient {
  /// ### SFW Class
  /// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
  /// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
  ///
  /// ### Examples
  /// This is an simple example of an SFW endpoints functions.
  /// ```dart
  /// void main() async {
  ///   print(await Client.Sfw.hug(2)); // Generate 2 Hug Gifs, Output: Type List<String>
  ///   print(await Client.Sfw.run());
  ///   print(await Client.Sfw.headpat());
  ///}
  ///```
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)
  var Sfw = new TypeSFW();

  /// ### NSFW Class
  /// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
  /// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
  ///
  /// ### Examples
  /// This is an simple example of an NSFW endpoints functions.
  /// ```dart
  /// void main() async {
  ///   print(await Client.Nsfw.kill(2)); // Generate 2 Nsfw Kill, Output: Type List<String>
  ///   print(await Client.Nsfw.yuri());
  ///}
  ///```
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)
  var Nsfw = new TypeNSFW();

  /// ### AniGames Class
  /// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
  /// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
  ///
  /// ### Examples
  /// This is an simple example of an AniGame endpoints functions.
  /// ```dart
  /// void main() async {
  ///   print("Truth Challenge: ${await Client.AniGames.truth(2)}"); // Generate 2 Truth Text, Output: Type List<String>
  ///   print("Dare challenge: ${await Client.AniGames.dare()}");
  ///}
  ///```
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)
  var AniGames = new TypeAniGames();

  /// ### Games Class
  /// Games Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
  /// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
  ///
  /// ### Examples
  /// This is an simple example of an Games endpoints functions.
  /// ```dart
  /// void main() async {
  ///   print("Truth Challenge: ${await Client.Games.truth(3)}"); // Generate 3 Truth Text, Output: Type List<String>
  ///   print("Dare Challenge: ${await Client.Games.dare(2)}"); // Generate 2 Dare Text, Output: Type List<String>
  ///}
  ///```
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)
  var Games = new TypeGames();

  /// ### Help Class
  /// Help Class Have Their Own Functions, Every Function Return a Variable List with Valids Endpoints. In case you puts the wrong endpoints function, you will get an errors message.
  /// ### Example
  /// ```dart
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  ///
  /// var Client = new EstraClient();
  ///
  /// void main() {
  ///   print(Client.Help.Sfw());
  /// }
  /// ```
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)

  var Help = new Helper();

  /// ### Data Class
  /// Data Class Hvae a Simple Function that Will Return How Much Image or Text with Specific Endpoints Does Have
  /// ### Example
  /// ```dart
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// var Client = new EstraClient();
  /// void main() async {
  ///   print("Total Image of Sfw Poke : ${await Client.Data.totalSfw("poke")}");
  ///   print("Total Image of Nsfw Yuri : ${await Client.Data.totalNsfw("yuri")}");
  ///   print("Total Text of Truth Challenge : ${await Client.Data.totalGames("truth")}");
  ///   print("Total Text of AniGames Truth Challenge : ${await Client.Data.totalAniGames("truth")}");
  ///   print("Version: ${await Client.Data.version()}");
  ///}
  ///```

  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)

  var Data = new DataEP();

  /// ### UpdateClient Class
  /// A Class that is used to update the client, it will update the client with the latest version. Or you can make it reminderOnly
  /// ### Examples
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  ///
  /// var Client = new EstraClient();
  ///
  /// void main() {
  ///   Client.UpdateClient.reminderOnly()
  ///   Client.UpdateClient.config(true, true);
  ///}
  ///```
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)
  var UpdateClient = new EstraVersionClient();

  /// ### Osu Class
  /// This is an simple class that can be used to get data from osu api and we make it easy to use!
  ///
  /// ### Examples
  /// ```
  /// var client_id = ""; //Puts your client_id osu key
  /// var client_secret = ""; //Puts your client_secret osu key
  ///
  /// void main() async {
  ///   var profile = await Client.OsuClients.osuprofile("Stawa");
  ///   print(profile["avatar_url"]);
  ///   var format_profile = await Client.OsuClients.osuprofile("Stawa", true);
  ///   print("Formatted Profile: ${format_profile}");
  ///}
  ///```
  ///
  /// ### Important Note
  /// Some Examples on Code Documentation are sometimes not stable anymore, All Examples are in [Our Github](https://github.com/StawaDev/EstraDart/tree/main/example)
  var OsuClients = new TypeOsu();
}
