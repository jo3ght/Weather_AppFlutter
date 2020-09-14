import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {
  NetworkHelper(this.url);

  final String url;

  Future getData() async {
    //Call API using HTTP Response
    http.Response response = await http.get(url);

    //Status code 200 is OK
    if (response.statusCode == 200) {
      String data = response.body;

      // get jsonData and Decode it
      var decodeData = jsonDecode(data);
      print(decodeData);

      return decodeData;
    } else {
      print(response.statusCode);
    }
  }
}
