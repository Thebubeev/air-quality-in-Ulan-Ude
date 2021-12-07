import 'dart:convert';

class Model {
  String counrty;
  String city;
  List<Data> list;

  Model({this.counrty, this.city, this.list});

  Model.fromJson(Map<String, dynamic> json) {
    counrty = json['country_code'].toString();
    city = json['city_name'].toString();
    if (json['data'] != null) {
      list = [];
      json['data'].forEach((v) {
        list.add(new Data.fromJson(v));
      });
    }
  }

  @override
  String toString() {
    return 'Model:{city: $city, counrty: $counrty}';
  }
}

class Data {
  int aqi;
  int co;
  int ozone;
  double pm10;
  double pm25;
  double so2;
  double no2;

  Data({this.aqi, this.co, this.ozone});

  Data.fromJson(Map<String, dynamic> json) {
    aqi = json['aqi'].toInt();
    co = json['co'].toInt();
    ozone = json['o3'].toInt();
    pm10 = json['pm10'].toDouble();
    pm25 = json['pm25'].toDouble();
    so2 = json['so2'].toDouble();
    no2 = json['no2'].toDouble();
  }
}
