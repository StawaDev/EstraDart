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
class EstraReminderBase {
  /// Reminding Users about Updating EstraDart to Latest Version.
  UpdateReminder() async {
    var UtD_Ver = await HttpManager.Version();
    var C_Ver = "0.1.8";
    if (UtD_Ver != C_Ver) {
      print(
          "EstraReminder: It seems EstraDart have a new update version $UtD_Ver");
    }
  }
}
