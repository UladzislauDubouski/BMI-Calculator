import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.height, this.weight, this.age, this.selectedGender});

  final int height;
  final int weight;
  final int age;
  final int selectedGender; // male == 0, female == 1

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResults() {
    if (selectedGender == 0) {
      if (age < 30) {
        if (_bmi < 19.5) {
          return 'Underweight';
        } else if (_bmi >= 19.5 && _bmi < 23) {
          return 'Normal (healthy weight)';
        } else if (_bmi >= 23 && _bmi < 27.5) {
          return 'Overweight';
        } else if (_bmi >= 27.5 && _bmi < 30) {
          return 'Obese Class I (Moderately obese)';
        } else if (_bmi >= 30 && _bmi < 35) {
          return 'Obese Class II (Severely obese)';
        } else
          return 'Obese Class III (Very severely obese)';
      } else {
        if (_bmi < 20) {
          return 'Underweight';
        } else if (_bmi >= 20 && _bmi < 26) {
          return 'Normal (healthy weight)';
        } else if (_bmi >= 26 && _bmi < 28) {
          return 'Overweight';
        } else if (_bmi >= 28 && _bmi < 31) {
          return 'Obese Class I (Moderately obese)';
        } else if (_bmi >= 31 && _bmi < 36) {
          return 'Obese Class II (Severely obese)';
        } else
          return 'Obese Class III (Very severely obese)';
      }
    } else {
      if (age < 30) {
        if (_bmi < 18.5) {
          return 'Underweight';
        } else if (_bmi >= 18.5 && _bmi < 22) {
          return 'Normal (healthy weight)';
        } else if (_bmi >= 22 && _bmi < 26.5) {
          return 'Overweight';
        } else if (_bmi >= 26.5 && _bmi < 30) {
          return 'Obese Class I (Moderately obese)';
        } else if (_bmi >= 30 && _bmi < 35) {
          return 'Obese Class II (Severely obese)';
        } else
          return 'Obese Class III (Very severely obese)';
      } else {
        if (_bmi < 19) {
          return 'Underweight';
        } else if (_bmi >= 19 && _bmi < 25) {
          return 'Normal (healthy weight)';
        } else if (_bmi >= 25 && _bmi < 27) {
          return 'Overweight';
        } else if (_bmi >= 27 && _bmi < 31) {
          return 'Obese Class I (Moderately obese)';
        } else if (_bmi >= 31 && _bmi < 36) {
          return 'Obese Class II (Severely obese)';
        } else
          return 'Obese Class III (Very severely obese)';
      }
    }
  }

  String getInterpretation() {
    if (selectedGender == 0) {
      if (_bmi < 19.5) {
        return 'Risk of developing problems such as nutritional deficiency and osteoporosis.';
      } else if (_bmi >= 19.5 && _bmi < 26) {
        return 'Low Risk (healthy range).';
      } else if (_bmi >= 26 && _bmi < 31) {
        return 'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes.';
      } else {
        return 'High risk of developing heart disease, high blood pressure, stroke, diabetes.';
      }
    } else {
      if (_bmi < 18.5) {
        return 'Risk of developing problems such as nutritional deficiency and osteoporosis.';
      } else if (_bmi >= 18.5 && _bmi < 25) {
        return 'Low Risk (healthy range).';
      } else if (_bmi >= 25 && _bmi < 30) {
        return 'Moderate risk of developing heart disease, high blood pressure, stroke, diabetes.';
      } else {
        return 'High risk of developing heart disease, high blood pressure, stroke, diabetes.';
      }
    }
  }
}
