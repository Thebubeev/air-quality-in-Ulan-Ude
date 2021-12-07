import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Util {
  static String getFormattedDate(DateTime dateTime) {
    return DateFormat('EEE, MMM d, y').format(dateTime); // Tue, May 5, 2020
  }

  static getItem(IconData iconData, String value, String units) {
    return Column(
      children: <Widget>[
        Icon(iconData, color: Colors.white, size: 28.0),
        SizedBox(height: 10.0),
        Text(
          '$value',
          style: TextStyle(fontSize: 20.0, color: Colors.green),
        ),
        SizedBox(height: 10.0),
        Text(
          '$units',
          style: TextStyle(fontSize: 15.0, color: Colors.white),
        ),
      ],
    );
  }
}
