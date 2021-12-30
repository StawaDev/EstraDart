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
import 'package:estradart/estradart.dart';
```

## Simple Examples

```dart
import 'package:estradart/estradart.dart';

void main() async {
  print(await EstraSFW.slap());
  print(await EstraNSFW.kill());
  // More Examples On Specific Category Files
}
```

## Confused?
Don't worry! If you confused with our endpoint, you can use our Help function or you can search it on our documentation!
```dart
import 'package:estradart/estradart.dart';

// Available endpoints "All, Sfw, Nsfw, AniGames, Games"
void main() {
  print(EstraHelp.Sfw());
  print(EstraHelp.Nsfw());
  print(EstraHelp.AniGames());
  print(EstraHelp.Games());
  print(EstraHelp.All());
}

```