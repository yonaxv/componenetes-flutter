import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  const AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  State<AnimatedContainerPage> createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pink;
  Icon _icono = Icon(Icons.play_arrow);
  bool _onoff = false;
  final _random = Random();

  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            FloatingActionButton(
              child: const Icon(Icons.skip_next),
              heroTag: 'btnext',
              onPressed: _change,
            ),
            SizedBox(
              width: 10.0,
            ),
            FloatingActionButton(
              child: _icono,
              heroTag: 'btnfun',
              onPressed: _fun,
            ),
          ],
        ),
      ),
      appBar: AppBar(
        // ignore: prefer_const_constructors
        title: Text('Animated container'),
      ),
      body: Center(
          child: AnimatedContainer(
        duration: Duration(seconds: 1),
        curve: Curves.easeInToLinear,
        width: _width,
        height: _height,
        decoration: BoxDecoration(borderRadius: _borderRadius, color: _color),
      )),
    );
  }

  void _fun() {
    setState(() {
      for (var i = 0; i < 25; i++) {
        _width = _random.nextInt(300).toDouble();
        _height = _random.nextInt(300).toDouble();
        _color = Color.fromRGBO(_random.nextInt(255), _random.nextInt(255),
            _random.nextInt(255), 1);
        _borderRadius = BorderRadius.circular(_random.nextInt(100).toDouble());
      }
    });
  }

  void _change() {
    setState(() {
      _width = _random.nextInt(300).toDouble();
      _height = _random.nextInt(300).toDouble();
      _color = Color.fromRGBO(
          _random.nextInt(255), _random.nextInt(255), _random.nextInt(255), 1);
      _borderRadius = BorderRadius.circular(_random.nextInt(100).toDouble());
    });
  }
}
