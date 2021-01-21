import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

import '../services/location.dart';

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
    Location location = new Location();
    await location.getCurrentLocation();
    print("This is the latitude value : " + location.latitude.toString());
    print("This is the longitude value : " + location.longitude.toString());

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
