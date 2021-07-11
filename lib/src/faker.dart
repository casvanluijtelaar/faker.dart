import 'package:faker_dart/src/address.dart';
import 'package:faker_dart/src/image.dart';

import 'datatype.dart';
import 'models/faker_locale.dart';
import 'name.dart';
import 'utils/locale_utils.dart';

/// generate massive amounts of fake data in dart!
class Faker {
  Faker._internal();

  /// [Faker] singleton
  static final Faker instance = Faker._internal();

  /// default locale will always be English
  FakerLocale _locale = LocaleUtils.generateLocale(FakerLocaleType.en);

  /// currently active locale
  FakerLocale get locale => _locale;

  /// set a locale from one of the included locales
  void setLocale(FakerLocaleType type) =>
      _locale = LocaleUtils.generateLocale(type);

  /// set a custom locale
  void setCustomLocale(FakerLocale locale) => _locale = locale;

  /// {@template datatype}
  /// generate random data types
  /// {@endtemplate}
  final DataType datatype = DataType();

  /// {@template image}
  /// generate rondom image urls from different sources
  /// {@endtemplate}
  Image get image => Image(instance);

  /// {@template name}
  /// generate rondom names & jobs
  /// {@endtemplate}
  Name get name => Name(instance);

  /// {@template address}
  /// generate rondom addresses
  /// {@endtemplate}
  Address get address => Address(instance);

  /// Generator method for combining faker methods based on string input
  ///
  /// __Example:__
  ///
  /// ```
  // ignore: lines_longer_than_80_chars
  /// print(faker.fake('{{name.lastName}}, {{name.firstName}} {{name.suffix}}'));
  /// outputs: "Marks, Dean Sr."
  /// ```
  ///
  /// This will interpolate the format string with the value of methods
  // ignore: comment_references
  /// [name.lastName], [name.firstName], and [name.suffix],
  ///
  ///
  String fake(String str) {
    var res = '';

    if (str.isEmpty) throw ArgumentError('invalid fake string');

    // find first matching {{ and }}
    final start = str.indexOf('{{');
    final end = str.indexOf('}}');

    // if no {{ and }} is found, we are done
    if (start == -1 || end == -1) return str;

    // extract method name from between the {{ }} that we found
    // for example: {{name.firstName}}
    final token = str.substring(start + 2, end);
    var method = token.replaceAll('}}', '').replaceAll('{{', '');
    // split the method into module and function
    var parts = method.split('.');

    if (_namespace[parts[0]] == null) {
      throw ArgumentError('invalid module: ${parts[0]}');
    }
    if (_namespace[parts[0]]![parts[1]] == null) {
      throw ArgumentError('invalid method: ${parts[1]}');
    }

    // assign the function from the namespace
    final fn = _namespace[parts[0]]![parts[1]]!;
    // ignore: avoid_dynamic_calls
    final result = fn();

    // replace the found tag with the returned fake value
    res = str.replaceAll('{{$token}}', result.toString());

    // return the response recursively until we are done finding all tags
    return fake(res);
  }

  /// stores a reference to all faker methods in this package sorted by
  /// module and method name
  Map<String, Map<String, Function>> get _namespace => {
        'datatype': {
          'number': datatype.number,
          'float': datatype.float,
          'dateTime': datatype.dateTime,
          'string': datatype.string,
          'uuid': datatype.uuid,
          'boolean': datatype.boolean,
          'hexaDecimal': datatype.hexaDecimal,
          'json': datatype.json,
          'list': datatype.list,
        },
        'name': {
          'firstName': name.firstName,
          'middleName': name.middleName,
          'lastName': name.lastName,
          'jobTitle': name.jobTitle,
          'gender': name.gender,
          'prefix': name.prefix,
          'suffix': name.suffix,
          'title': name.title,
          'jobDescriptor': name.jobDescriptor,
          'jobArea': name.jobType,
          'jobType': name.jobType,
        },
        'address': {
          'zipCode': address.zipCode,
          'city': address.city,
          'cityPrefix': address.cityPrefix,
          'citySuffix': address.citySuffix,
          'cityName': address.cityName,
          'streetName': address.streetName,
          'streetSuffix': address.streetSuffix,
          'streetPrefix': address.streetPrefix,
          'streetAddress': address.streetAddress,
          'secondaryAddress': address.secondaryAddress,
          'county': address.county,
          'country': address.country,
          'countryCode': address.countryCode,
          'state': address.state,
          'stateAbbr': address.stateAbbr,
          'latitude': address.latitude,
          'longitude': address.longitude,
          'direction': address.direction,
          'cardinalDirection': address.cardinalDirection,
          'ordinalDirection': address.ordinalDirection,
          'nearbyGPSCoordinate': address.nearbyGPSCoordinate,
          'timezone': address.timezone,
        }
      };
}
