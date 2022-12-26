import 'package:flutter/material.dart';
import 'package:generatortraining/widgets/appbar.dart';
import 'widgets/musclePainter.dart';
import 'dart:ui';

Color outline = Colors.red;
Color other = Colors.blue;
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final MuscleColorList _color = MuscleColorList();

  void _changeColor() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GeneratorAppBar(),
      body: Column(children: [
        CustomPaint(
          size: Size(300, (300 * 1).toDouble()),
          painter: MusclePainter(_color),
        ),
        RaisedButton(
          onPressed: _changeColor,
          child: Text('Change color'),
        ),
      ]),
    );
    ;
  }
}
