import 'dart:io';

import 'package:estradart/http.dart';

/// ### EstraReminderBase
/// This Class Will Be Remidning Users Something About EstraDart, Like Reminding Update of EstraDart
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
class EstraVersionClient {
  /// Reminding Users about Updating EstraDart to Latest Version.
  reminderOnly() async {
    var data = await HttpManager.Version();
    var civ = "0.1.8";
    var csv = data["EstraDart"]["Version"];

    if (civ != csv) {
      print(
          "EstraDart: REMINDER ONLY! There's a new stable version available! Version $csv");
    }
  }

  /// Updating EstraDart to Latest Version.
  update() async {
    Process.run("dart pub upgrade estradart", [],
            runInShell: true, workingDirectory: Directory.current.path)
        .then((ProcessResult result) {
      print(result.stdout);
    });
  }

  /// Configuring AutoUpdate of EstraDart.
  config([output = true, change_log = true]) async {
    var data = await HttpManager.Version();
    var civ = "0.1.8";
    var csv = data["EstraDart"]["Version"];
    var cl = "Change Log: ${data["EstraDart"]["Change Logs"]}";

    if (output && change_log) {
      if (civ != csv) {
        await update();
        print(
            "It seems there's a new stable version of EstraDart, We are gonna update it to the latest version: $csv");
        print(cl);
        return;
      }
      print("EstraDart is up to date");
      print(cl);
      return;
    } else if (output == true && change_log == false) {
      if (civ != csv) {
        await update();
        print(
            "It seems there's a new stable version of EstraDart, We are gonna update it to the latest version: $csv");
        return;
      }
    } else if (output == false && change_log == true) {
      if (civ != csv) {
        await update();
        print(cl);
        return;
      }
    }
  }
}
