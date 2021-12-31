import 'src/sfw.dart';
import 'src/nsfw.dart';
import 'src/anigames.dart';
import 'src/games.dart';
import 'src/estrahelp.dart';
import 'src/countdata.dart';

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
var EstraSFW = new TypeSFW();

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
var EstraNSFW = new TypeNSFW();

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
var EstraAniGames = new TypeAniGames();

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
var EstraGames = new TypeGames();

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
var EstraHelp = new Help();

/// ### Help Class
/// Help Class Have Their Own Functions, Every Function Return a Variable List with Valids Endpoints. In case you puts the wrong endpoints function, you will get an errors message.
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

var EstraData = new Data();
