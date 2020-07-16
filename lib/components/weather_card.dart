import 'package:flutter/material.dart';
import 'package:weather_app/components/temp_card.dart';
import 'package:weather_app/components/weather_details_card.dart';
import 'package:weather_app/constants.dart';

class WeatherCard extends StatelessWidget {
  final String city;
  final String imageCode;
  final String main;
  final String desc;
  final int temp;

  WeatherCard({this.main, this.desc, this.temp, this.imageCode, this.city});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(kLargeMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Center(
                child: Text(
              city,
              style: TextStyle(fontSize: 25),
            )),
            SizedBox(
              height: kSmallMargin,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Image.network('$kImageUrl/$imageCode@2x.png'),
                Column(
                  children: <Widget>[
                    TempCard(
                      temp: temp,
                    ),
                    WeatherDetailsCard(
                      main: main,
                      desc: desc,
                    )
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
