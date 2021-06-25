import 'package:faker_dart/src/address.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/helpers.dart';
import 'package:faker_dart/src/locale_utils.dart';

import 'models/faker_locale.dart';
import 'name.dart';

class Faker {
  Faker._privateConstructor();

  static final Faker _instance = Faker._privateConstructor();
  static Faker get instance => _instance;

  /// default locale will always be English
  FakerLocale _locale = LocaleUtils.generateLocale(FakerLocaleType.en);

  FakerLocale get locale => _locale;

  /// update the [FakerLocale] by setting the prefered [FakerLocaleType]
  void setLocale(FakerLocaleType type) =>
      _locale = LocaleUtils.generateLocale(type);

  final Helpers helpers = Helpers(instance);

  final DataType datatype = DataType();
  final Name name = Name(instance);
  final Address address = Address(instance);

  /**
   * Generator method for combining faker methods based on string input
   *
   * __Example:__
   *
   * ```
   * print(faker.fake('{{name.lastName}}, {{name.firstName}} {{name.suffix}}'));
   * //outputs: "Marks, Dean Sr."
   * ```
   *
   * This will interpolate the format string with the value of methods
   * [name.lastName], [name.firstName], and [name.suffix],
   *
   */
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
    final token = str.substring(start + 2, end - start - 2);
    var method = token.replaceAll('}}', '').replaceAll('{{', '');
    // split the method into module and function
    var parts = method.split('.');

    if (_namespace[parts[0]] == null)
      throw ArgumentError('invalid module: ${parts[0]}');
    if (_namespace[parts[0]]![parts[1]] == null)
      throw ArgumentError('invalid method: ${parts[1]}');

    // assign the function from the module.function namespace
    final fn = _namespace[parts[0]]![parts[1]]!;
    final result = fn();

    // replace the found tag with the returned fake value
    res = str.replaceAll('{{' + token + '}}', result);

    // return the response recursively until we are done finding all tags
    return fake(res);
  }

  //TODO: fill up namespace
  Map<String, Map<String, Function>> get _namespace => {
        'address': {
          'zipCode': address.zipCode,
        }
      };
}
