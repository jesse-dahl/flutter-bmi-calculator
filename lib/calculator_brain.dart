import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {

  final int height;
  final int weight;

  double _bmi;

  CalculatorBrain({@required this.height, @required this.weight});

  String calculateBMI () {
    _bmi = (weight / pow(height, 2)) * 703;
    return(_bmi.toStringAsFixed(1));
  }

  String getResult() {
    if (_bmi >= 25) {
      return('Overweight');
    } else if (_bmi > 18.5) {
      return('Normal');
    } else {
      return('Underweight');
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return('You have a higher than normal body weight. Try to eat better and get more exercise');
    } else if (_bmi > 18.5) {
      return('You have a normal body weight. Good job!');
    } else {
      return('You have a lower than normal body weight. Try to eat a little more and gain some pounds');
    }
  }
}