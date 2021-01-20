import 'package:flutter/material.dart';

const bottomContainerHeight = 80.0;
const cardColour = 0xFF1D1E33;
const bottomContainerColour = 0xFFEB1555;

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("BMI CALCULATOR"),
        ),
        body: Column(
          children: <Widget>[
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

class ReusableCard extends StatelessWidget {

  // Property
  final Color colour;

  // Constructor
  ReusableCard({ @required this.colour });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: colour,
        borderRadius: BorderRadius.circular(10.0),
      ),
    );
  }
}
