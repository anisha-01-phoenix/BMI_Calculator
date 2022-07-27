import 'dart:math';

class Calculator {
  Calculator({required this.height, required this.weight});
  final int height;
  final int weight;

  double _bmi = 0.0;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getText() {
    if (_bmi >= 25)
      return 'You have higher than normal body weight. Try and exercise more';
    if (_bmi >= 18) return 'You have a normal body weight. Good Job!';
    return 'You have lower BMI than normal body weight. Eat a bit more';
  }

  String getResult() {
    if (_bmi >= 25) return 'OVERWEIGHT';
    if (_bmi >= 18) return 'NORMAL';
    return 'UNDERWEIGHT';
  }
}
