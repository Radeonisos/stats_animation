# Stats Animation

Display yours stats with animation. You can use this package on all platform who support Flutter

<p>
    <img src="https://github.com/Radeonisos/stats_animation/blob/master/screenshots/demo_gif.gif?raw=true"/>
    <img src="https://github.com/Radeonisos/stats_animation/blob/master/screenshots/demo_img.png?raw=true"/>
</p>

## Getting Started

You can use this package very easily.

You need to add this lines to your `pubspec.yaml` :

```yaml
dependencie:
    stats_animation: ^1.0.3
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