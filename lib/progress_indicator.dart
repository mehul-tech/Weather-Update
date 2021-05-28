import 'dart:convert';

import 'package:fetch_data_api/weather.dart';
import 'package:flutter/material.dart';

import 'api_data.dart';
import 'data_objects.dart';

class ProgressIndigator extends StatefulWidget {
  final String city;

  const ProgressIndigator(this.city);

  @override
  _ProgressIndigatorState createState() => _ProgressIndigatorState(city);
}

class _ProgressIndigatorState extends State<ProgressIndigator>
    with TickerProviderStateMixin {
  late AnimationController controller;

  final String city;

  _ProgressIndigatorState(this.city);

  late DataObject object;

  List<dynamic> response = [];

  @override
  Future<void> setState(VoidCallback fn) async {
    response = await getData();
    var data = jsonDecode(response[0]);
    if (data['name'] == null) {
      Navigator.pop(context);
    }
    object = DataObject(
        data['name'],
        data['weather'][0]['main'],
        data['weather'][0]['description'],
        ((((data['main']['temp'] as double) - 273.0) * 100.0).round()) / 100.0,
        ((((data['main']['temp_max'] as double) - 273.0) * 100).round()) / 100,
        ((((data['main']['temp_min'] as double) - 273.0) * 100).round()) / 100);

    print(object);
    Navigator.pop(context);
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => Weather(object)));
  }

  getData() {
    var object = ApiData().getData(city);
    return object;
  }

  @override
  void initState() {
    setState(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Center(
                child: CircularProgressIndicator(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
