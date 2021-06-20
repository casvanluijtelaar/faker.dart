


import 'dart:convert';

import 'package:equatable/equatable.dart';

class Address extends Equatable {
  final List<String> buildingNumber;
  final List<String> city;
  final List<String> cityName;
  final List<String> cityPrefix;
  final List<String> citySuffix;
  final List<String> country;
  final List<String> countryCode;
  final List<String> countryCodeAlpha3;
  final List<String> defaultCountry;
  final List<String> direction;
  final List<String> directionAbbr;
  final List<String> postcode;
  final List<String> postcodeByState;
  final List<String> secondaryAddress;
  final List<String> state;
  final List<String> stateAbbr;
  final List<String> streetAddress;
  final List<String> streetName;
  final List<String> streetSuffix;
  final List<String> timeZone;
  Address({
    required this.buildingNumber,
    required this.city,
    required this.cityName,
    required this.cityPrefix,
    required this.citySuffix,
    required this.country,
    required this.countryCode,
    required this.countryCodeAlpha3,
    required this.defaultCountry,
    required this.direction,
    required this.directionAbbr,
    required this.postcode,
    required this.postcodeByState,
    required this.secondaryAddress,
    required this.state,
    required this.stateAbbr,
    required this.streetAddress,
    required this.streetName,
    required this.streetSuffix,
    required this.timeZone,
  });


  Address copyWith({
    List<String>? buildingNumber,
    List<String>? city,
    List<String>? cityName,
    List<String>? cityPrefix,
    List<String>? citySuffix,
    List<String>? country,
    List<String>? countryCode,
    List<String>? countryCodeAlpha3,
    List<String>? defaultCountry,
    List<String>? direction,
    List<String>? directionAbbr,
    List<String>? postcode,
    List<String>? postcodeByState,
    List<String>? secondaryAddress,
    List<String>? state,
    List<String>? stateAbbr,
    List<String>? streetAddress,
    List<String>? streetName,
    List<String>? streetSuffix,
    List<String>? timeZone,
  }) {
    return Address(
      buildingNumber: buildingNumber ?? this.buildingNumber,
      city: city ?? this.city,
      cityName: cityName ?? this.cityName,
      cityPrefix: cityPrefix ?? this.cityPrefix,
      citySuffix: citySuffix ?? this.citySuffix,
      country: country ?? this.country,
      countryCode: countryCode ?? this.countryCode,
      countryCodeAlpha3: countryCodeAlpha3 ?? this.countryCodeAlpha3,
      defaultCountry: defaultCountry ?? this.defaultCountry,
      direction: direction ?? this.direction,
      directionAbbr: directionAbbr ?? this.directionAbbr,
      postcode: postcode ?? this.postcode,
      postcodeByState: postcodeByState ?? this.postcodeByState,
      secondaryAddress: secondaryAddress ?? this.secondaryAddress,
      state: state ?? this.state,
      stateAbbr: stateAbbr ?? this.stateAbbr,
      streetAddress: streetAddress ?? this.streetAddress,
      streetName: streetName ?? this.streetName,
      streetSuffix: streetSuffix ?? this.streetSuffix,
      timeZone: timeZone ?? this.timeZone,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'buildingNumber': buildingNumber,
      'city': city,
      'cityName': cityName,
      'cityPrefix': cityPrefix,
      'citySuffix': citySuffix,
      'country': country,
      'countryCode': countryCode,
      'countryCodeAlpha3': countryCodeAlpha3,
      'defaultCountry': defaultCountry,
      'direction': direction,
      'directionAbbr': directionAbbr,
      'postcode': postcode,
      'postcodeByState': postcodeByState,
      'secondaryAddress': secondaryAddress,
      'state': state,
      'stateAbbr': stateAbbr,
      'streetAddress': streetAddress,
      'streetName': streetName,
      'streetSuffix': streetSuffix,
      'timeZone': timeZone,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      buildingNumber: List<String>.from(map['buildingNumber']),
      city: List<String>.from(map['city']),
      cityName: List<String>.from(map['cityName']),
      cityPrefix: List<String>.from(map['cityPrefix']),
      citySuffix: List<String>.from(map['citySuffix']),
      country: List<String>.from(map['country']),
      countryCode: List<String>.from(map['countryCode']),
      countryCodeAlpha3: List<String>.from(map['countryCodeAlpha3']),
      defaultCountry: List<String>.from(map['defaultCountry']),
      direction: List<String>.from(map['direction']),
      directionAbbr: List<String>.from(map['directionAbbr']),
      postcode: List<String>.from(map['postcode']),
      postcodeByState: List<String>.from(map['postcodeByState']),
      secondaryAddress: List<String>.from(map['secondaryAddress']),
      state: List<String>.from(map['state']),
      stateAbbr: List<String>.from(map['stateAbbr']),
      streetAddress: List<String>.from(map['streetAddress']),
      streetName: List<String>.from(map['streetName']),
      streetSuffix: List<String>.from(map['streetSuffix']),
      timeZone: List<String>.from(map['timeZone']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) => Address.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      buildingNumber,
      city,
      cityName,
      cityPrefix,
      citySuffix,
      country,
      countryCode,
      countryCodeAlpha3,
      defaultCountry,
      direction,
      directionAbbr,
      postcode,
      postcodeByState,
      secondaryAddress,
      state,
      stateAbbr,
      streetAddress,
      streetName,
      streetSuffix,
      timeZone,
    ];
  }
}
