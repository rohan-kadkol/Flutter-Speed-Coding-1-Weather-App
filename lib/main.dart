import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'file:///C:/Users/kadko/AndroidStudioProjects/FlutterProjects/InformalFlutterWorkshops/weather_app/lib/services/networking.dart';
import 'package:weather_app/components/weather_card.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/screens/weather_screen.dart';

void main() {
  runApp(WeatherApp());
}

class WeatherApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WeatherScreen.routeName,
      routes: {
        WeatherScreen.routeName: (context) => WeatherScreen()
      },
    );
  }
}

