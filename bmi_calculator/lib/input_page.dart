import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/ReusableCardContent.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

// Enum created for the gender constant names
enum Gender{
  male,
  female
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = Color(kInactiveCardColor);
  Color femaleCardColor = Color(kInactiveCardColor);
  Gender selectedGender;
  int height = 180;
  int weight = 60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("BMI CALCULATOR", textAlign: TextAlign.center),
          ),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        onPress: (){
                          setState(() {
                            selectedGender = Gender.male;
                          });
                        },
                        colour: selectedGender == Gender.male ? Color(kActiveCardColor) : Color(kInactiveCardColor),
                        cardChild: ReusableCardContent(icon: FontAwesomeIcons.mars, label: "MALE",),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      onPress: (){
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      colour: selectedGender == Gender.female ? Color(kActiveCardColor) : Color(kInactiveCardColor),
                      cardChild: ReusableCardContent(icon: FontAwesomeIcons.venus, label: "FEMALE",),
                    ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                  colour: Color(kCardColour),
                  cardChild: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("HEIGHT", style: kTextLabelStyle),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(height.toString(), style: kTextThickFontStyle),
                          Text("cm", style: kTextLabelStyle,)
                        ],
                      ),
                      SliderTheme(
                        data: SliderThemeData(),
                        child: Slider(
                            value: height.toDouble(),
                            min: 120.0,
                            max: 220.0,
                            activeColor: Color(0xffeb1555),
                            inactiveColor: Color(0xff8d8e98),
                            onChanged: (double newValue){
                              setState(() {
                                height = newValue.round();
                              });
                            }
                        ),
                      )
                    ],
                  ),
              ),
            ),
            Expanded(
                child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(
                        colour: Color(kCardColour),
                        cardChild: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "WEIGHT",
                              style: kTextLabelStyle,
                            ),
                            Text(
                              weight.toString(),
                              style: kTextThickFontStyle,
                            )
                          ],
                        ),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Color(kCardColour)),
                ),
              ],
            )),
            Container(
              color: Color(kBottomContainerColour),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}


