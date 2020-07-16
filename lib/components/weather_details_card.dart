import 'package:flutter/material.dart';

class WeatherDetailsCard extends StatelessWidget {
  final String main;
  final String desc;

  WeatherDetailsCard({this.main, this.desc});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Text(
          main,
          style: TextStyle(fontSize: 16, color: Colors.black),
        ),
        Text(
          desc,
          style: TextStyle(
            fontSize: 14,
          ),
        )
      ],
    );
  }
}
