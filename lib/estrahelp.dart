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
var AllType = [
  "sfw",
  "nsfw",
  "anigames",
  "games",
];

var AllList = {
  "Sfw": "${SFW.join(", ")}",
  "Nsfw": "${NSFW.join(", ")}",
  "AniGames": "${AniGamesList.join(", ")}",
  "Games": "${GamesList.join(", ")}"
};

class Help {
  Sfw() {
    return "Sfw List Endpoints: ${SFW.join(", ")}";
  }

  Nsfw() {
    return "Nsfw List Endpoints: ${NSFW.join(", ")}";
  }

  AniGames() {
    return "AniGames List Endpoints: ${AniGamesList.join(", ")}";
  }

  Games() {
    return "Games List Endpoints: ${GamesList.join(", ")}";
  }

  All() {
    var encoder = new JsonEncoder.withIndent("     ");
    return encoder.convert(AllList);
  }
}
