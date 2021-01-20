// This is the Reusable Card Content Widget
import 'package:flutter/material.dart';

const textLabelStyle = TextStyle(
    fontSize: 18.0,
    color: Color(0xFF8D8E98)
);

class ReusableCardContent extends StatelessWidget {

  // Properties
  final IconData icon;
  final String label;

  // Constructor
  ReusableCardContent({this.icon, this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style: textLabelStyle
        )
      ],
    );
  }
}
