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
var AniGames_Type_Link = ["waifu", "husbando"];
var GamesList = ["truth", "dare"];

var AllList = {
  "Sfw": "${SFW.join(", ")}",
  "Nsfw": "${NSFW.join(", ")}",
  "AniGames": "${AniGamesList.join(", ")}",
  "Games": "${GamesList.join(", ")}"
};

class Help {
  Sfw() {
    return "Sfw List Endpoints: $SFW";
  }

  Nsfw() {
    return "Nsfw List Endpoints: $NSFW";
  }

  AniGames() {
    return "AniGames List Endpoints: $AniGamesList";
  }

  All() {
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(AllList);
  }
}
