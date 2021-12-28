## Import EstraDart

Before you can import the EstraDart, you must install the following packages,

```dart
dart pub add estradart
```

or you can use flutter

```dart
flutter pub add estradart
```

Now you can import the EstraDart by typing,
```dart
import "package:estra/estra.dart" as Estra;
```

## Simple Examples

```dart
import "package:estra/estra.dart" as Estra;

void main() async {
  Estra a = new Estra();
  a.typeCat = "anigames";
  a.endPoint = "husbando";
  var OutPut = await a.outputJSON();
  print(OutPut);
}
```
