import 'package:air_quality/api/air_quality_api.dart';
import 'package:air_quality/constants.dart/loading.dart';
import 'package:air_quality/models/air_quality_model.dart';
import 'package:air_quality/widgets/city_view.dart';
import 'package:air_quality/widgets/aqi_view.dart';
import 'package:air_quality/widgets/detail_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class AirQualityScreen extends StatefulWidget {
  const AirQualityScreen({Key key}) : super(key: key);

  @override
  _AirQualityScreenState createState() => _AirQualityScreenState();
}

class _AirQualityScreenState extends State<AirQualityScreen> {
  Future<Model> _model;

  @override
  void initState() {
    super.initState();
    _model = AirQualityApi.getModel();
    print(_model);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Theme.of(context).primaryColor,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Air Quality',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: ListView(
            children: [
              Container(
                child: FutureBuilder<Model>(
                  future: _model,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Column(
                        children: [
                          SizedBox(
                            height: 25,
                          ),
                          CityView(
                            snapshot: snapshot,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          AQIView(
                            snapshot: snapshot,
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          DetailView(snapshot: snapshot)
                        ],
                      );
                    }
                    return Padding(
                      padding: EdgeInsets.only(top: 250),
                      child:
                          SpinKitDoubleBounce(color: Colors.green, size: 100.0),
                    );
                  },
                ),
              )
            ],
          ),
        ));
  }
}
