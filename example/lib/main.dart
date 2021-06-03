import 'package:flutter/material.dart';
import 'package:stats_animation/stats_animation.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Package Stats Animation',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stats Animated'),
      ),
      body: Center(
          child: StatsAnimation(
        {
          'attaque': 90,
          'intelligence': 100,
          'vitesse': 60,
          'esquive': 10,
          'esquive2': 10,
          'vitesse 1': 60,
          'intelligence sd': 100,
        },
      )),
    );
  }
}
