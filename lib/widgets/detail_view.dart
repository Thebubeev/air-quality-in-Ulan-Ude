import 'package:air_quality/models/air_quality_model.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DetailView extends StatelessWidget {
  final AsyncSnapshot<Model> snapshot;
  const DetailView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var co = snapshot.data.list[0].co;
    var ozone = snapshot.data.list[0].ozone;
    var pm10 = snapshot.data.list[0].pm10;
    var pm10Str = snapshot.data.list[0].pm10.toStringAsFixed(2);
    var pm25 = snapshot.data.list[0].pm25;
    var pm25Str = snapshot.data.list[0].pm25.toStringAsFixed(2);
    var so2 = snapshot.data.list[0].so2;
    var so2Str = snapshot.data.list[0].so2.toStringAsFixed(2);
    var no2 = snapshot.data.list[0].no2;
    var no2Str = snapshot.data.list[0].no2.toStringAsFixed(2);
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(FontAwesomeIcons.atom, color: Colors.white, size: 28.0),
                  SizedBox(height: 10.0),
                  Text(
                    '$co',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: co < 600
                            ? Colors.green
                            : co >= 601 && co < 1000
                                ? Colors.yellow
                                : co >= 1000 && co < 1500
                                    ? Colors.amber
                                    : co >= 1500
                                        ? Colors.red
                                        : 0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'CO',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(FontAwesomeIcons.osi, color: Colors.white, size: 28.0),
                  SizedBox(height: 10.0),
                  Text(
                    '$ozone',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: ozone < 100
                            ? Colors.green
                            : ozone >= 100 && ozone < 240
                                ? Colors.yellow
                                : ozone >= 240
                                    ? Colors.red
                                    : 0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'O3',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(FontAwesomeIcons.neos, color: Colors.white, size: 28.0),
                  SizedBox(height: 10.0),
                  Text(
                    '$no2Str',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: no2 < 90
                            ? Colors.green
                            : no2 >= 90 && no2 < 240
                                ? Colors.yellow
                                : no2 >= 240
                                    ? Colors.red
                                    : 0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'NO2',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(
            height: 25,
          ),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(FontAwesomeIcons.soap, color: Colors.white, size: 28.0),
                  SizedBox(height: 10.0),
                  Text(
                    '$so2Str',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: so2 < 200
                            ? Colors.green
                            : so2 >= 200 && so2 < 450
                                ? Colors.yellow
                                : so2 >= 450
                                    ? Colors.red
                                    : 0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'SO2',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(FontAwesomeIcons.patreon,
                      color: Colors.white, size: 28.0),
                  SizedBox(height: 10.0),
                  Text(
                    '$pm10Str',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: pm10 < 40
                            ? Colors.green
                            : pm10 >= 40 && pm10 < 100
                                ? Colors.yellow
                                : pm10 >= 100
                                    ? Colors.red
                                    : 0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'PM10',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Icon(FontAwesomeIcons.patreon,
                      color: Colors.white, size: 28.0),
                  SizedBox(height: 10.0),
                  Text(
                    '$pm25Str',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: pm25 < 20
                            ? Colors.green
                            : pm25 >= 20 && pm25 < 50
                                ? Colors.yellow
                                : pm25 >= 50
                                    ? Colors.red
                                    : 0),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'PM25',
                    style: TextStyle(fontSize: 15.0, color: Colors.white),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
