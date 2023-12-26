import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url),
        headers: {'accept': 'application/json,content-type=application/json'});
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception(
          "there is problem withstatus code  ${response.statusCode}");
    }
  }
}
