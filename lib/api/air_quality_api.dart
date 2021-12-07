import 'dart:convert';
import 'dart:developer';
import 'package:air_quality/models/air_quality_model.dart';
import 'package:http/http.dart' as http;

class AirQualityApi {
  static Future<Model> getModel() async {
    var uri = Uri.https('air-quality.p.rapidapi.com', '/current/airquality',
        {"lon": "107.586777", "lat": "51.834141"});
    log('request: ${uri.toString()}');
    final response = await http.get(uri, headers: {
      "x-rapidapi-key": "1018abc376mshd25157565f9a743p1b0f42jsn97ab048f1eb5",
      "x-rapidapi-host": "air-quality.p.rapidapi.com",
      "useQueryString": "true"
    });
    print('response: ${response.body}');
    if (response.statusCode == 200) {
      return Model.fromJson(json.decode(response.body));
    } else {
      return Future.error('Error response');
    }
  }
}
