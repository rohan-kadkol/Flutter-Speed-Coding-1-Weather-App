import 'package:flutter/material.dart';

const String kApiKey = '56f509517ae9a28e30bf0c423cfe7ccd';
const String kApiUrl = 'https://api.openweathermap.org/data/2.5/weather';
const String kImageUrl = 'http://openweathermap.org/img/wn/';

const double kSmallMargin = 10;
const double kLargeMargin = 20;

const InputDecoration kTextFieldDecoration = InputDecoration(
    icon: Icon(Icons.location_on),
    border: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10))));
