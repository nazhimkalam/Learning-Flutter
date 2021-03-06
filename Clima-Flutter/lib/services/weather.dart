import '../services/location.dart';
import '../services/networking.dart';
const API_KEY = 'cc499597f97254c8a975e604f84b96ae';

class WeatherModel {

  Future<dynamic> getLocationWeather() async{
    Location location = new Location();
    await location.getCurrentLocation();

    Networking networking = Networking('https://api.openweathermap.org/data/2.5/weather?lat=${location.latitude}&'
        + 'lon=${location.longitude}&appid=$API_KEY&units=metric');

    var weatherData = await networking.getData();

    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}

