import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:weather_app/components/weather_card.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/services/networking.dart';

class WeatherScreen extends StatefulWidget {
  static final String routeName = '/';

  @override
  _WeatherScreenState createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {
  String city = '?';
  int temp = 0;
  String main = '?';
  String desc = '?';
  String imageCode = '';

  void getWeather() async {
    NetworkHelper helper =
        NetworkHelper('$kApiUrl?q=$city&appid=$kApiKey&units=imperial');
    var data = await helper.getData();
    print(data);
    try {
      setState(() {
        temp = data['main']['temp'].toInt();
        main = data['weather'][0]['main'];
        desc = data['weather'][0]['description'];
        imageCode = data['weather'][0]['icon'];
      });
    } catch (e) {
      Alert(
        context: context,
        title: 'Error downloading weather',
      ).show();
      setState(() {
        temp = 0;
        main = '?';
        desc = '?';
        imageCode = '';
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Weather App'),
          ),
          body: Padding(
            padding: EdgeInsets.all(kLargeMargin),
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Expanded(
                      child: TextField(
                        textInputAction: TextInputAction.go,
                        onChanged: (value) {
                          city = value;
                        },
                        onSubmitted: (value) {
                          getWeather();
                        },
                        decoration: kTextFieldDecoration.copyWith(
                            hintText: 'Enter City Name'),
                      ),
                    ),
                    SizedBox(
                      width: kSmallMargin,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightBlue,
                        borderRadius: BorderRadius.all(Radius.circular(10),)
                      ),
                      child: IconButton(
                        icon: Icon(Icons.forward),
                        color: Colors.white,
                        onPressed: () {
                          FocusScope.of(context).unfocus();
                          getWeather();
                        },
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: kLargeMargin,
                ),
                WeatherCard(
                  city: city,
                  temp: temp,
                  main: main,
                  desc: desc,
                  imageCode: imageCode,
                ),
              ],
            ),
          )),
    );
  }
}
