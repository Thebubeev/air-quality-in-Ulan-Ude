import 'package:air_quality/models/air_quality_model.dart';
import 'package:flutter/material.dart';

class AQIView extends StatelessWidget {
  final AsyncSnapshot<Model> snapshot;
  const AQIView({this.snapshot});

  @override
  Widget build(BuildContext context) {
    var aqi = snapshot.data.list[0].aqi;

    return Column(
      children: [
        Align(
          child: Container(
            width: 240,
            height: 240,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                    color: aqi > 0 && aqi < 50
                        ? Colors.green
                        : aqi >= 50 && aqi < 100
                            ? Colors.yellow
                            : aqi >= 100 && aqi < 150
                                ? Colors.amber
                                : aqi >= 150
                                    ? Colors.red
                                    : 0,
                    width: 5)),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                aqi.toString(),
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 45),
              ),
              Text(
                'AQI',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 25),
              ),
            ]),
          ),
        ),
      ],
    );
  }
}
