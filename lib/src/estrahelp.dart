import 'dart:convert';

var SFW = [
  "hug",
  "run",
  "smile",
  "headpat",
  "neko",
  "bite",
  "highfive",
  "poke",
  "slap"
];
var NSFW = ["yaoi", "yuri", "kill"];
var AniGamesList = ["truth", "dare", "waifu", "husbando"];
var GamesList = ["truth", "dare"];
var AllList = {
  "Sfw": "${SFW.join(", ")}",
  "Nsfw": "${NSFW.join(", ")}",
  "AniGames": "${AniGamesList.join(", ")}",
  "Games": "${GamesList.join(", ")}"
};

/**
 * ### Help Class
 * Help Class Have Their Own Functions, Every Function Return a Variable List with Valids Endpoints. In case you puts the wrong endpoints function, you will get an errors message.
 * ### Example
 * ```dart
 * library Estra;
 * import 'package:estradart/estradart.dart';
 * void main() {
 *   print(EstraHelp.Sfw());
 * }
 * ```
 */
class Help {
  /**
   * Return Sfw Endpoints as List
   */
  Sfw() {
    return "Sfw List Endpoints: ${SFW.join(", ")}";
  }

  /**
   * Return Nsfw Endpoints as List
   */
  Nsfw() {
    return "Nsfw List Endpoints: ${NSFW.join(", ")}";
  }

  /**
   * Return AniGames Endpoints as List
   */
  AniGames() {
    return "AniGames List Endpoints: ${AniGamesList.join(", ")}";
  }

  /**
   * Return Games Endpoints as List
   */
  Games() {
    return "Games List Endpoints: ${GamesList.join(", ")}";
  }

  /**
   * Return All Endpoints as JSON Format
   */
  All() {
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(AllList);
  }
}
