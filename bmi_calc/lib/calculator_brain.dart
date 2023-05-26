import 'package:flutter/material.dart';
import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  double _BMI = 0;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI(){
    _BMI = weight / pow(height/100, 2);
    return _BMI.toStringAsFixed(1);
  }

  String getResult(){
    if(_BMI >= 25) {
      return 'Выше нормы';
    }
    else if (_BMI > 18.5){
      return 'Нормально';
    }
    else {
      return 'Недовес';
    }
  }

  String getInterpretation(){
    if(_BMI >= 25){
      return 'Ебать ты бегемот!';
    }
    else if (_BMI > 18.5){
      return 'Намана, пойдёт';
    }
    else {
      return 'Дистрофика кусок! Иди супа наверни!';
    }
  }

}