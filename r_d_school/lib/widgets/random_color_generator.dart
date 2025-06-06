import 'dart:math';

import 'package:flutter/material.dart';

class RandomColorGenerator extends StatefulWidget {
  const RandomColorGenerator({super.key});

  @override
  State<RandomColorGenerator> createState() => _RandomColorGeneratorState();
}

class _RandomColorGeneratorState extends State<RandomColorGenerator> {
  Color _currentColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _generateColor,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        color: _currentColor,
        child: Center(
          child: Text(
            'Tap me',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
              color: _getContrastingColor(_currentColor),
            ),
          ),
        ),
      ),
    );
  }

  void _generateColor() {
    final random = Random();
    setState(() {
      _currentColor = Color.fromARGB(
        255,
        random.nextInt(256),
        random.nextInt(256),
        random.nextInt(256),
      );
    });
  }

  Color _getContrastingColor(Color color) {
    final brightness = color.computeLuminance();
    return brightness > 0.5 ? Colors.black : Colors.white;
  }
}
