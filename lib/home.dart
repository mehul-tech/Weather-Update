import 'package:fetch_data_api/progress_indicator.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController city = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "WEATHER\nUPDATE",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold,
            ),
            textAlign: TextAlign.center,
          ),
          Padding(padding: EdgeInsets.all(10.0)),
          TextField(
            controller: city,
            decoration: InputDecoration(
              hintText: "City Name",
              labelText: "Enter Your City",
              border: OutlineInputBorder(),
            ),
            keyboardType: TextInputType.text,
          ),
          Padding(
            padding: EdgeInsets.all(10.0),
          ),
          RaisedButton(
            onPressed: () {
              if ((city.text).isEmpty) {
                print("YES");
              } else {
                setState(() {});
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ProgressIndigator(city.text)));
              }
            },
            child: Text("Submit"),
          ),
        ],
      ),
    );
  }
}
