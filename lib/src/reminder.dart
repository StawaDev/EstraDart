import 'package:estradart/http.dart';

class EstraReminderBase {
  UpdateReminder() async {
    var UtD_Ver = await HttpManager.Version();
    var C_Ver = "0.1.5";
    if (UtD_Ver != C_Ver) {
      print(
          "EstraReminder: It seems EstraDart have a new update version $UtD_Ver");
    }
  }
}
