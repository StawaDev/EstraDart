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
  ///  print(await EstraSFW.slap());
  ///  print(await EstraSFW.run());
  ///  print(await EstraSFW.headpat());
  ///}
  ///```
  var Sfw = new TypeSFW();

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
  var Nsfw = new TypeNSFW();

  /// ### AniGames Class
  /// AniGames Class Have Their Own Endpoint Functions, Once You Put The Correct Endpoint, It Will Return Normally,
  /// But Once You Put The Invalid Endpoint It Will Gives You an Error Messages.
  ///
  /// ### Examples
  /// This is an simple example of an AniGame endpoints functions.
  /// ```dart
  /// void main() async {
  ///  print(await EstraAniGames.truth());
  ///  print(await EstraAniGames.waifu());
  ///}
  ///```
  var AniGames = new TypeAniGames();

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
  var Games = new TypeGames();

  /// ### Help Class
  /// Help Class Have Their Own Functions, Every Function Return a Variable List with Valids Endpoints. In case you puts the wrong endpoints function, you will get an errors message.
  /// ### Example
  /// ```dart
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// void main() {
  ///   print(EstraHelp.Sfw());
  /// }
  /// ```
  var Help = new Helper();

  /// ### Data Class
  /// Data Class Hvae a Simple Function that Will Return How Much Image or Text with Specific Endpoints Does Have
  /// ### Example
  /// ```dart
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  /// void main() {
  ///   print("Total Image of Sfw Poke : ${await EstraData.totalSfw("poke")}");
  ///   print(
  ///     "Total Text of Truth Challenge : ${await EstraData.totalGames("truth")}");
  /// }
  /// ```

  var Data = new DataEP();

  /// ### Reminder Class
  /// Reminder Class is A Simple Reminder That Will *Print* When EstraDart Have an New Versions
  /// ### Examples
  /// ```
  /// library Estra;
  /// import 'package:estradart/estradart.dart';
  ///
  /// void main() {
  ///   EstraReminder.UpdateReminder();
  /// }
  ///```
  /// ### Important Note
  /// As always, do NOT use this class function with print method, because it will return null as well.
  var Reminder = new EstraReminderBase();

  /// ### Osu Class
  /// This is an simple class that can be used to get data from osu api and we make it easy to use!
  ///
  /// ### Examples
  /// ```
  /// void main() async {
  ///  var client_id = ""; //Puts your client_id osu key
  ///  var client_secret = ""; //Puts your client_secret osu key
  ///  print(await Osu.osuprofile("Stawa", "avatar_url", client_id,
  ///      client_secret)); // The "avatar_url" was the key from a value JSON Response
  ///  print(await Osu.osuprofiledata(
  ///      "Stawa", client_id, client_secret)); // Print all data from JSON Response
  ///}
  ///```
  var OsuClients = new TypeOsu();
}
