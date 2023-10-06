import 'package:http/http.dart' as http;

class Network {
  getData(apiURL) async {
    var fullUrl = "http://10.0.2.2:8000/api/" + apiURL;
    return await http.get(Uri.parse(fullUrl));
  }
}
