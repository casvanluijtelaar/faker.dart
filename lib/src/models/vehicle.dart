import 'dart:convert';

import 'package:collection/collection.dart';

class Vehicle {
  final List<String>? bicycle;
  final List<String>? fuel;
  final List<String>? manufacturer;
  final List<String>? model;
  final List<String>? vehicleType;
  Vehicle({
    required this.bicycle,
    required this.fuel,
    required this.manufacturer,
    required this.model,
    required this.vehicleType,
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
      bicycle: List<String>.from(map['bicycle']),
      fuel: List<String>.from(map['fuel']),
      manufacturer: List<String>.from(map['manufacturer']),
      model: List<String>.from(map['model']),
      vehicleType: List<String>.from(map['vehicleType']),
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
