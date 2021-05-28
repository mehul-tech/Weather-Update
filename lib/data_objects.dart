import 'package:equatable/equatable.dart';

class DataObject extends Equatable {
  final String city, weatherCondition, description;
  final double temp, maxtemp, mintemp;

  const DataObject(this.city, this.weatherCondition, this.description,
      this.temp, this.maxtemp, this.mintemp);

  @override
  List<Object?> get props =>
      [city, weatherCondition, description, temp, maxtemp, mintemp];
}
