import 'package:bmi_calculator/BottomButton.dart';
import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {

  final String BMIResult;
  final String resultText;
  final String resultInterpretation;

  ResultsPage({this.BMIResult, this.resultText, this.resultInterpretation});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("BMI CALCULATOR"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.all(15.0),
              alignment: Alignment.center,
              child: Text("You Result", style: kTitleTextStyle ,),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(kActiveCardColor),
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(resultText, style: kResultTextStyle,),
                  Text(BMIResult, style: kBmiTextStyle,),
                  Text(resultInterpretation, style: kBodyTextStyle, textAlign: TextAlign.center,)
                ],
              ),
            ),
          ),
          BottomButton(onTap: (){
            Navigator.pop(context);
          }, buttonTitle: "RE-CALCULATE")
        ],
      ),
    );
  }
}
