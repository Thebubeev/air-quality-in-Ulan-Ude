import 'package:air_quality/models/air_quality_model.dart';
import 'package:flutter/material.dart';

class CityView extends StatelessWidget {
  final AsyncSnapshot<Model> snapshot;
  const CityView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var modelSnapshot = snapshot.data;
    var city = modelSnapshot.city;
    var country = modelSnapshot.counrty;
    return Container(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        Text('$city, $country',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 45.0,
              color: Colors.white,
            )),
      ],
    ));
  }
}
