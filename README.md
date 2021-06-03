# Stats Animation

Display yours stats with animation. You can use this package on all platform who support Flutter

## Getting Started

You can use this package very easily.

You need to add this lines to your `pubspec.yaml` :

```yaml
dependencie:
    stats_animation: ^0.0.1
```

## Usage

```dart
import 'package:stats_animation/stats_animation.dart';
```

then you can use the package with a map of String and double (you can adapt all parameters like Colors, size, aligment etc)

```dart
Scaffold(
      appBar: AppBar(
        title: Text('Stats Animated'),
      ),
      body: Center(
          child: StatsAnimation(
        {
          'attack': 90,
          'speed': 100,
          'defense': 60,
          'hp': 10,
        },
      )),
    )
```