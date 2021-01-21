import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  // This is the life cycle method to run at start (just like use effect in React JS)
  @override
  void initState() {
    super.initState();
    getLocation();
  }

  void getLocation() async{
    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    print("Displaying the location");
    print(position);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
