library Estra;

import 'package:estradart/estradart.dart';

var Client = new EstraClient();

void main() {
  Client.UpdateClient.reminderOnly();
  // Will remind you of the new stable release version of the EstraDart
  // Do NOT Use This Function with Print Method, It will return null!
  Client.UpdateClient.config(true, true);
  // Will automatically updating the latest stable release version of EstraDart
}

// Short Examples

var Clients = new EstraClient().UpdateClient.config(true, true);
var Clientz = new EstraClient().UpdateClient.reminderOnly();
