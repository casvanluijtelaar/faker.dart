import 'dart:math';

import 'package:faker_dart/src/utils/helper_utils.dart';
import 'package:faker_dart/src/utils/random_utils.dart';

import '../faker_dart.dart';

/// country code types
enum AlphaCode {
  /// 2 leter country code
  alpha2,

  /// 3 letter country code
  alpha3,
}

/// {@macro address}
class Address {
  /// {@macro address}
  const Address(this._faker);

  final Faker _faker;

  /// generates a random zipCode
  ///
  /// optionally you can provide a zipCode format in the shape of:
  ///
  /// `String format = '####-##';`
  ///
  /// where every `#` is replaced by a number
  String zipCode({String? format}) {
    final localeFormat = format ??
        RandomUtils.arrayElement(
          _faker.locale.address.postcode,
        );
    return HelperUtils.replaceSymbols(localeFormat);
  }

  /// Generates a random localized city name. The format string can contain any
  /// method provided by faker wrapped in `{{}}`, e.g. `{{name.firstName}}` in
  /// order to build the city name.
  ///
  /// If no format string is provided one of the following is randomly used:
  ///
  /// `{{address.cityPrefix}} {{name.firstName}}{{address.citySuffix}}`
  /// `{{address.cityPrefix}} {{name.firstName}}`
  /// `{{name.firstName}}{{address.citySuffix}}`
  /// `{{name.lastName}}{{address.citySuffix}}`
  /// `{{address.cityName}}` when city name is available
  String city({String? format}) {
    final formats = [
      '{{address.cityPrefix}} {{name.firstName}}{{address.citySuffix}}',
      '{{address.cityPrefix}} {{name.firstName}}',
      '{{name.firstName}}{{address.citySuffix}}',
      '{{name.lastName}}{{address.citySuffix}}'
    ];

    format ??= formats[_faker.datatype.number(max: formats.length - 1)];

    return _faker.fake(format);
  }

  /// Returns a random localized city prefix
  String cityPrefix() {
    return RandomUtils.arrayElement(_faker.locale.address.cityPrefix);
  }

  /// Returns a random localized city suffix
  String citySuffix() {
    return RandomUtils.arrayElement(_faker.locale.address.citySuffix);
  }

  /// Returns a random city name
  String cityName() {
    return RandomUtils.arrayElement(_faker.locale.address.cityName);
  }

  /// Returns a random localized street name
  String streetName() {
    final suffix = streetSuffix();

    return _faker.datatype.boolean()
        ? '${_faker.name.lastName()} $suffix'
        : '${_faker.name.firstName()} $suffix';
  }

  /// returns a random street suffix
  String streetSuffix() {
    return RandomUtils.arrayElement(_faker.locale.address.streetSuffix);
  }

  /// returns a random street prefix
  String streetPrefix() {
    return RandomUtils.arrayElement(_faker.locale.address.streetPrefix);
  }

  /// generates a random street address
  ///
  /// optionally you can set [useFullAddress] if you'd like to add a second
  /// address line
  String streetAddress({bool useFullAddress = false}) {
    var number = '';
    for (var i = 0; i < _faker.datatype.number(max: 2); i++) {
      number += '#';
    }

    final address =
        '${HelperUtils.replaceSymbolWithNumber(number)} ${streetName()}';

    return useFullAddress ? '$address ${secondaryAddress()}' : address;
  }

  /// returns a random secondairy address
  ///
  /// formatted as either:
  /// * Apt. ###
  /// * Suite ###
  String secondaryAddress() {
    final format = RandomUtils.arrayElement(['Apt. ###', 'Suite ###']);
    return HelperUtils.replaceSymbolWithNumber(format);
  }

  /// returns a random county
  String county() {
    return RandomUtils.arrayElement(_faker.locale.address.county);
  }

  /// returns a random country
  String country() {
    return RandomUtils.arrayElement(_faker.locale.address.country);
  }

  /// returns a random country code
  ///
  /// default [AlphaCode] used is [AlphaCode.alpha2]
  String countryCode({AlphaCode alphaCode = AlphaCode.alpha2}) {
    return alphaCode == AlphaCode.alpha2
        ? RandomUtils.arrayElement(_faker.locale.address.countryCode)
        : RandomUtils.arrayElement(_faker.locale.address.countryCodeAlpha3);
  }

  /// returns a random state
  String state() {
    return RandomUtils.arrayElement(_faker.locale.address.state);
  }

  /// returns a random state abbreviation
  String stateAbbr() {
    return RandomUtils.arrayElement(_faker.locale.address.stateAbbr);
  }

  /// returns a random latitude
  ///
  /// optional [min], [max] & [precision] can be defined to narrow down
  /// the range
  double latitude({double min = -90, double max = 90, int precision = 4}) {
    return _faker.datatype.float(min: min, max: max, precision: precision);
  }

  /// returns a random latitude
  ///
  /// optional [min], [max] & [precision] can be defined to narrow down
  /// the range
  double longitude({double min = -180, double max = 180, int precision = 4}) {
    return _faker.datatype.float(min: min, max: max, precision: precision);
  }

  /// returns a random direction
  ///
  /// optionally you can set [useAbbr] to `true` to return
  /// the abbreviated direction
  String direction({bool useAbbr = false}) {
    return useAbbr
        ? RandomUtils.arrayElement(_faker.locale.address.directionAbbr)
        : RandomUtils.arrayElement(_faker.locale.address.direction);
  }

  /// returns a random cardinal direction
  ///
  /// optionally you can set [useAbbr] to `true` to return
  /// the abbreviated direction
  String cardinalDirection({bool useAbbr = false}) {
    return useAbbr
        ? RandomUtils.arrayElement(
            _faker.locale.address.directionAbbr!.sublist(0, 4))
        : RandomUtils.arrayElement(
            _faker.locale.address.direction!.sublist(0, 4));
  }

  /// returns a random ordinal direction
  ///
  /// optionally you can set [useAbbr] to `true` to return
  /// the abbreviated direction
  String ordinalDirection({bool useAbbr = false}) {
    return useAbbr
        ? RandomUtils.arrayElement(
            _faker.locale.address.directionAbbr!.sublist(4, 8))
        : RandomUtils.arrayElement(
            _faker.locale.address.direction!.sublist(4, 8));
  }

  /// returns a random GPS coordinate
  ///
  /// * if no nearby [coordinate] is provided a random coordinate will be chosen
  /// * selects a random point withing a [radius] of the provided [coordinate]
  /// * [isMetric] to define if the radius is in miles or kilometers
  List<double> nearbyGPSCoordinate({
    List<double>? coordinate,
    double radius = 10.0,
    bool isMetric = false,
  }) {
    double degreesToRadians(double degrees) => degrees * (pi * 180.0);
    double radiansToDegrees(double radians) => radians * (180.0 / pi);
    double kilometersToMiles(double miles) => miles * 0.621371;

    List<double> coordinateWithOffset(
      List<double> coordinate,
      double bearing,
      double distance,
      bool isMetric,
    ) {
      const r = 6378.137;
      final d = isMetric ? distance : kilometersToMiles(distance);

      final lat1 = degreesToRadians(coordinate[0]);
      final lon1 = degreesToRadians(coordinate[1]);

      final lat2 =
          asin(sin(lat1) * cos(d / r) + cos(lat1) * sin(d / r) * cos(bearing));

      var lon2 = lon1 +
          atan2(sin(bearing) * sin(d / r) * cos(lat1),
              cos(d / r) - sin(lat1) * sin(lat2));

      if (lon2 > degreesToRadians(180)) {
        lon2 = lon2 - degreesToRadians(360);
      } else if (lon2 < degreesToRadians(-180)) {
        lon2 = lon2 + degreesToRadians(360);
      }

      return [radiansToDegrees(lat2), radiansToDegrees(lon2)];
    }

    coordinate ??= [latitude(), longitude()];

    return coordinateWithOffset(
      coordinate,
      degreesToRadians(_faker.datatype.float(max: 360)),
      radius,
      isMetric,
    );
  }

  /// returns a random time zone
  String timezone() {
    return RandomUtils.arrayElement(_faker.locale.address.timeZone);
  }
}
