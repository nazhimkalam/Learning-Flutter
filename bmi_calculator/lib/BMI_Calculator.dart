import 'dart:math';

// ignore: camel_case_types
class BMI_Calculator{

  final int height;
  final int weight;
  // ignore: non_constant_identifier_names
  double BMI;

  BMI_Calculator({this.height, this.weight});

  // ignore: missing_return
  String calculateBMI(){
    BMI = weight / pow(height/100, 2);
    return BMI.toStringAsFixed(1);
  }

  // ignore: missing_return
  String getResult(){
    if(BMI >= 25){
      return "Overweight";
    }else if(BMI > 18.5){
      return "Normal";
    }else{
      return "Underweight";
    }
  }

  String getInterpretation(){
    if(BMI >= 25){
      return "You fat cow, go hit the GYM!";
    }else if(BMI > 18.5){
      return "Hmm, seems you are fit by friend";
    }else{
      return "Hey you useless kite, go EAT!";
    }
  }

}