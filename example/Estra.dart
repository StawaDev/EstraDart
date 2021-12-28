library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  Estra a = new Estra();
  a.typeCat = "anigames";
  a.endPoint = "husbando";
  var OutPut = await a.outputJSON();
  print(OutPut);
}
