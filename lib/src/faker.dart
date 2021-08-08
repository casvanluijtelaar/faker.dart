import 'package:faker_dart/src/address.dart';
import 'package:faker_dart/src/company.dart';
import 'package:faker_dart/src/database.dart';
import 'package:faker_dart/src/image.dart';

import 'animal.dart';
import 'commerce.dart';
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
  /// generate rondom  valid image urls from different sources
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

  /// {@template animal}
  /// generate rondom animals
  /// {@endtemplate}
  Animal get animal => Animal(instance);

  /// {@template commerce}
  /// generate rondom commerce related items
  /// {@endtemplate}
  Commerce get commerce => Commerce(instance);

  /// {@template company}
  /// generate rondom company related items
  /// {@endtemplate}
  Company get company => Company(instance);

  /// {@template database}
  /// generate rondom database related items
  /// {@endtemplate}
  Database get database => Database(instance);

  /// Generator method for combining faker methods based on string input
  ///
  /// __Example:__
  ///
  /// ```
  // ignore: lines_longer_than_80_chars
  /// print(faker.instance.fake('{{name.lastName}}, {{name.firstName}} {{name.suffix}}'));
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

    if (str.isEmpty) return str;

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
        },
        'animal': {
          'animal': animal.animal,
          'type': animal.type,
          'dog': animal.dog,
          'cat': animal.cat,
          'snake': animal.snake,
          'bear': animal.bear,
          'lion': animal.lion,
          'cetacean': animal.cetacean,
          'horse': animal.horse,
          'bird': animal.bird,
          'cow': animal.cow,
          'fish': animal.fish,
          'crocodilia': animal.crocodilia,
          'instect': animal.insect,
          'rabbit': animal.rabbit,
        },
        'commerce': {
          'color': commerce.color,
          'department': commerce.department,
          'productName': commerce.productName,
          'price': commerce.price,
          'productAdjective': commerce.productAdjective,
          'productMaterial': commerce.productMaterial,
          'product': commerce.product,
          'productDescription': commerce.productDescription,
        },
        'company': {
          'companyName': company.companyName,
          'companySuffix': company.companySuffix,
          'catchPhrase': company.catchPhrase,
          'bs': company.bs,
          'catchPhraseAdjective': company.catchPhraseAdjective,
          'catchPhraseDescriptor': company.catchPhraseDescriptor,
          'catchPhraseNoun': company.catchPhraseNoun,
          'bsAdjective': company.bsAdjective,
          'bsBuzz': company.bsBuzz,
          'bsNoun': company.bsNoun,
        },
        'database': {
          'column': database.column,
          'type': database.type,
          'collation': database.collation,
          'engine': database.engine,
        }
      };
}
