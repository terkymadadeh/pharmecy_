import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  getrequest(String url) async {
    try {
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);
        return responsebody;
      } else {
        print("Error $response.statusCode");
      }
    } catch (e) {
      print(e);
    }
  }

  static postrequest(String url, Map data) async {
    try {
      var response = await http.post(Uri.parse(url),
          body: data, headers: {'Accept': 'application/json'});
      print(response.body);
      if (response.statusCode == 200) {
        var responsebody = jsonDecode(response.body);

        return responsebody;
      } else {
        print("Error $response.statusCode");
      }
    } catch (e) {
      print(e);
    }
  }
}
