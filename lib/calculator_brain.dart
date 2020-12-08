

import 'dart:math';

class CalculatorBrain{
  CalculatorBrain({this.height, this.weight});

  final int height;
  final int weight;
  double _bmi;

  String calculateBMI(){
    _bmi  = weight / pow(height/100.0,2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult(){
    if(_bmi>=25){
      return 'Overweight';
    }else if(_bmi > 18.5){
      return 'Normal';
    }else{
      return 'Underweight';
    }
  }
  String getInterpretation(){
    if(_bmi>=25){
      return 'Eat less';
    }else if(_bmi > 18.5){
      return 'Youre looking good. Keep going!';
    }else{
      return 'Eat more';
    }
  }


}