import 'package:geolocator/geolocator.dart';

class Location{

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
    try{
      // If user didn't give access for the location then, this throws an exception
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
      latitude = position.latitude;
      longitude = position.longitude;
    }catch(e){
      print(e);
    }
  }

}