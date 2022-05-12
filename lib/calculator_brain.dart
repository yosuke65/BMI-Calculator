import 'dart:math';

class CalculatorBrain {
  final int height;
  final int weight;

  late double _bmi;

  CalculatorBrain({required this.height, required this.weight});

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'Your BMI result is quite high, Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'Your BMI result is ideal, Great job!';
    } else {
      return 'Your BMI result is quite low, you should eat more.';
    }
  }
}
