// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Vehicle {
  final List<String>? bicycle;
  final List<String>? fuel;
  final List<String>? manufacturer;
  final List<String>? model;
  final List<String>? vehicleType;
  Vehicle({
    this.bicycle,
    this.fuel,
    this.manufacturer,
    this.model,
    this.vehicleType,
  });

  Vehicle copyWith({
    List<String>? bicycle,
    List<String>? fuel,
    List<String>? manufacturer,
    List<String>? model,
    List<String>? vehicleType,
  }) {
    return Vehicle(
      bicycle: bicycle ?? this.bicycle,
      fuel: fuel ?? this.fuel,
      manufacturer: manufacturer ?? this.manufacturer,
      model: model ?? this.model,
      vehicleType: vehicleType ?? this.vehicleType,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'bicycle': bicycle,
      'fuel': fuel,
      'manufacturer': manufacturer,
      'model': model,
      'vehicleType': vehicleType,
    };
  }

  factory Vehicle.fromMap(Map<String, dynamic> map) {
    return Vehicle(
      bicycle: map['bicycle'],
      fuel: map['fuel'],
      manufacturer: map['manufacturer'],
      model: map['model'],
      vehicleType: map['vehicleType'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Vehicle.fromJson(String source) =>
      Vehicle.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Vehicle(bicycle: $bicycle, fuel: $fuel, manufacturer: $manufacturer, model: $model, vehicleType: $vehicleType)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Vehicle &&
        listEquals(other.bicycle, bicycle) &&
        listEquals(other.fuel, fuel) &&
        listEquals(other.manufacturer, manufacturer) &&
        listEquals(other.model, model) &&
        listEquals(other.vehicleType, vehicleType);
  }

  @override
  int get hashCode {
    return bicycle.hashCode ^
        fuel.hashCode ^
        manufacturer.hashCode ^
        model.hashCode ^
        vehicleType.hashCode;
  }
}
