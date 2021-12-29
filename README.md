<h1 align="center">
    EstraDart
</h1>

<h2 align="center">
    A Basic Wrapper Anime Image API Created By Stawa Version Dart/Flutter
</h2>
<p align="center">
<a href="https://stawa.gitbook.io/estraapi-documentation/"><img src ="https://img.shields.io/badge/Estra--API-Documentation-brightgreen?style=for-the-badge"></a>
<a href="https://pub.dev/packages/estradart/"><img src ="https://img.shields.io/badge/Package-EstraDart-blue?style=for-the-badge"></a>
</p>

## Features

- Truth or Dare
- Anime GIFs
- Anime Waifu/Husbando Picture

## Simple Examples

```dart
library Estra;

import 'package:estradart/estradart.dart';

void main() async {
  Estra a = new Estra();
  a.typeCat = "anigames";
  a.endPoint = "waifu";
  print(await a.outputJSON());
}

// More examples on example folder!
```
