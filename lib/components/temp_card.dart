import 'package:flutter/material.dart';

class TempCard extends StatelessWidget {
  final int temp;

  TempCard({this.temp});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          temp.toString(),
          style: TextStyle(
            fontSize: 50,
          ),
        ),
        Align(
          child: Text('°F'),
          alignment: Alignment.topLeft,
        )
      ],
    );
  }
}
