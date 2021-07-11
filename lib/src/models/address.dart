// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Address {
  final List<String>? buildingNumber;
  final List<String>? city;
  final List<String>? cityName;
  final List<String>? cityPrefix;
  final List<String>? citySuffix;
  final List<String>? county;
  final List<String>? country;
  final List<String>? countryCode;
  final List<String>? countryCodeAlpha3;
  final List<String>? defaultCountry;
  final List<String>? direction;
  final List<String>? directionAbbr;
  final List<String>? postcode;
  final List<String>? postcodeByState;
  final List<String>? secondaryAddress;
  final List<String>? state;
  final List<String>? stateAbbr;
  final List<String>? streetAddress;
  final List<String>? streetName;
  final List<String>? streetPrefix;
  final List<String>? streetSuffix;
  final List<String>? timeZone;
  Address({
    this.buildingNumber,
    this.city,
    this.cityName,
    this.cityPrefix,
    this.citySuffix,
    this.county,
    this.country,
    this.countryCode,
    this.countryCodeAlpha3,
    this.defaultCountry,
    this.direction,
    this.directionAbbr,
    this.postcode,
    this.postcodeByState,
    this.secondaryAddress,
    this.state,
    this.stateAbbr,
    this.streetAddress,
    this.streetName,
    this.streetPrefix,
    this.streetSuffix,
    this.timeZone,
  });

  Address copyWith({
    List<String>? buildingNumber,
    List<String>? city,
    List<String>? cityName,
    List<String>? cityPrefix,
    List<String>? citySuffix,
    List<String>? county,
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
    List<String>? streetPrefix,
    List<String>? streetSuffix,
    List<String>? timeZone,
  }) {
    return Address(
      buildingNumber: buildingNumber ?? this.buildingNumber,
      city: city ?? this.city,
      cityName: cityName ?? this.cityName,
      cityPrefix: cityPrefix ?? this.cityPrefix,
      citySuffix: citySuffix ?? this.citySuffix,
      county: county ?? this.county,
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
      streetPrefix: streetPrefix ?? this.streetPrefix,
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
      'county': county,
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
      'streetPrefix': streetPrefix,
      'streetSuffix': streetSuffix,
      'timeZone': timeZone,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      buildingNumber: map['buildingNumber'],
      city: map['city'],
      cityName: map['cityName'],
      cityPrefix: map['cityPrefix'],
      citySuffix: map['citySuffix'],
      country: map['country'],
      county: map['county'],
      countryCode: map['countryCode'],
      countryCodeAlpha3: map['countryCodeAlpha3'],
      defaultCountry: map['defaultCountry'],
      direction: map['direction'],
      directionAbbr: map['directionAbbr'],
      postcode: map['postcode'],
      postcodeByState: map['postcodeByState'],
      secondaryAddress: map['secondaryAddress'],
      state: map['state'],
      stateAbbr: map['stateAbbr'],
      streetAddress: map['streetAddress'],
      streetName: map['streetName'],
      streetPrefix: map['streetPrefix'],
      streetSuffix: map['streetSuffix'],
      timeZone: map['timeZone'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Address(buildingNumber: $buildingNumber, city: $city, cityName: $cityName, cityPrefix: $cityPrefix, citySuffix: $citySuffix, county: $county, country: $country, countryCode: $countryCode, countryCodeAlpha3: $countryCodeAlpha3, defaultCountry: $defaultCountry, direction: $direction, directionAbbr: $directionAbbr, postcode: $postcode, postcodeByState: $postcodeByState, secondaryAddress: $secondaryAddress, state: $state, stateAbbr: $stateAbbr, streetAddress: $streetAddress, streetName: $streetName, streetPrefix: $streetPrefix, streetSuffix: $streetSuffix, timeZone: $timeZone)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Address &&
        listEquals(other.buildingNumber, buildingNumber) &&
        listEquals(other.city, city) &&
        listEquals(other.cityName, cityName) &&
        listEquals(other.cityPrefix, cityPrefix) &&
        listEquals(other.citySuffix, citySuffix) &&
        listEquals(other.county, county) &&
        listEquals(other.country, country) &&
        listEquals(other.countryCode, countryCode) &&
        listEquals(other.countryCodeAlpha3, countryCodeAlpha3) &&
        listEquals(other.defaultCountry, defaultCountry) &&
        listEquals(other.direction, direction) &&
        listEquals(other.directionAbbr, directionAbbr) &&
        listEquals(other.postcode, postcode) &&
        listEquals(other.postcodeByState, postcodeByState) &&
        listEquals(other.secondaryAddress, secondaryAddress) &&
        listEquals(other.state, state) &&
        listEquals(other.stateAbbr, stateAbbr) &&
        listEquals(other.streetAddress, streetAddress) &&
        listEquals(other.streetName, streetName) &&
        listEquals(other.streetPrefix, streetPrefix) &&
        listEquals(other.streetSuffix, streetSuffix) &&
        listEquals(other.timeZone, timeZone);
  }

  @override
  int get hashCode {
    return buildingNumber.hashCode ^
        city.hashCode ^
        cityName.hashCode ^
        cityPrefix.hashCode ^
        citySuffix.hashCode ^
        county.hashCode ^
        country.hashCode ^
        countryCode.hashCode ^
        countryCodeAlpha3.hashCode ^
        defaultCountry.hashCode ^
        direction.hashCode ^
        directionAbbr.hashCode ^
        postcode.hashCode ^
        postcodeByState.hashCode ^
        secondaryAddress.hashCode ^
        state.hashCode ^
        stateAbbr.hashCode ^
        streetAddress.hashCode ^
        streetName.hashCode ^
        streetPrefix.hashCode ^
        streetSuffix.hashCode ^
        timeZone.hashCode;
  }
}
