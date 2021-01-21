import 'package:http/http.dart' as http;
import 'dart:convert';

class Networking{
  final String url;

  Networking(this.url);

  Future getData() async {
    http.Response response = await http.get(url);

    if (response.statusCode == 200) {
      // success
      String data = response.body;
      var decodeResponseData = jsonDecode(data); // var --> dynamic data type

      return decodeResponseData;
    } else {
      // failure
      print(response.statusCode);
    }
  }
}