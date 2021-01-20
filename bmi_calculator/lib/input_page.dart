import 'package:bmi_calculator/ReusableCard.dart';
import 'package:bmi_calculator/ReusableCardContent.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const cardColour = 0xFF1D1E33;
const bottomContainerColour = 0xFFEB1555;
const activeCardColor = 0xFF1D1E33;
const inactiveCardColor = 0xFF111328;


class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Color maleCardColor = Color(inactiveCardColor);
  Color femaleCardColor = Color(inactiveCardColor);

  // updated the gender card when on tap
  void updateColour(int gender){
    if(gender == 1){
      if(maleCardColor == Color(inactiveCardColor)){
        maleCardColor = Color(activeCardColor);
        femaleCardColor = Color(inactiveCardColor);
      }else{
        maleCardColor = Color(inactiveCardColor);
        femaleCardColor = Color(activeCardColor);

      }
    }else{
      if(femaleCardColor == Color(inactiveCardColor)){
        femaleCardColor = Color(activeCardColor);
        maleCardColor = Color(inactiveCardColor);

      }else{
        femaleCardColor = Color(inactiveCardColor);
        maleCardColor = Color(activeCardColor);

      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("BMI CALCULATOR", textAlign: TextAlign.center),
          ),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
                children: <Widget>[
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                       setState(() {
                         updateColour(1);
                       });
                      },
                      child: ReusableCard(
                          colour: maleCardColor,
                          cardChild: ReusableCardContent(icon: FontAwesomeIcons.mars, label: "MALE",),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          updateColour(2);
                        });
                      },
                      child: ReusableCard(
                        colour: femaleCardColor,
                        cardChild: ReusableCardContent(icon: FontAwesomeIcons.venus, label: "FEMALE",),
                      ),
                    ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(colour: Color(cardColour)),
            ),
            Expanded(
                child: Row(
                children: <Widget>[
                  Expanded(
                    child: ReusableCard(colour: Color(cardColour)),
                  ),
                  Expanded(
                    child: ReusableCard(colour: Color(cardColour)),
                ),
              ],
            )),
            Container(
              color: Color(bottomContainerColour),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}


