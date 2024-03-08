import 'dart:math';

import 'package:flutter/material.dart';
class CalculateBMI{
  CalculateBMI(this._height,this._weight);
  final int _weight;
  final int _height;
  late Color _color;
  double get getUserBMI => _weight / pow(_height / 100, 2);
  Color get getBMIColor => _color;
  String get getResultText{
    if (getUserBMI >= 25) {
      _color = Colors.red;
      return 'Overweight';
    } else if (getUserBMI > 18.5) {
      _color = Colors.green;
      return 'Normal';
    } else {
      _color = Colors.red;
      return 'Underweight';
    }
  }
  String get getInterpretation {
    if (getUserBMI >= 25) {
      return 'You have a higher than normal body weight.\n\nTry to exercise more.';
    } else if (getUserBMI >= 18.5) {
      return 'You have a normal body weight.\n\nGood job!';
    } else {
      return 'You have a lower than normal body weight.\n\nYou can eat a bit more.';
    }
  }

}