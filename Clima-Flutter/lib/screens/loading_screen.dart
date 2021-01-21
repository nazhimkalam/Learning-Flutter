import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import '../services/weather.dart';
import '../services/weather.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  // This is the life cycle method to run at start (just like use effect in React JS)
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async{
    WeatherModel weatherModel = new WeatherModel();
    var weatherLocation = await weatherModel.getLocationWeather();

    // we now navigate to the location screen
    Navigator.push(context, MaterialPageRoute(builder: (context){
      return LocationScreen(locationWeather: weatherLocation,);
    }));
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ),
    );
  }
}
