import 'package:fetch_data_api/data_objects.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Weather extends StatelessWidget {
  final DataObject object;

  Weather(this.object);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weather forecast"),
      ),
      body: Container(
        padding: EdgeInsets.all(10.0),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "${object.city}",
              style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              "${object.temp}°C",
              style: TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              "${object.weatherCondition} | ${object.description}",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),
            ),
            SizedBox(height: 15.0),
            Text(
              "Min Temp. ${object.mintemp}°C",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),

            ),
            SizedBox(height: 15.0),
            Text(
              "Max Temp. ${object.maxtemp}°C",
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold
              ),

            ),
          ],
        ),
      ),
    );
  }
}
