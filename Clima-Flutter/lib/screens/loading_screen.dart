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
    try{
      // If user didn't give access for the location then, this throws an exception
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      print("This is the location details: " + position.toString());
    }catch(e){
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
