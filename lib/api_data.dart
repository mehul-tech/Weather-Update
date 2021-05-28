import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

// ignore: must_be_immutable
class ApiData extends Equatable {
  var object;

  Future<List> getData(String city) async {
    String url =
        'http://api.openweathermap.org/data/2.5/weather?q=${city}&appid=1da78c7fa805cd4d71d318cdc95b902e';
    var response = await http.get(Uri.parse(url));
    print(url);
    object = response.body;
    return [object];
  }

  @override
  List<Object?> get props => [object];
}
