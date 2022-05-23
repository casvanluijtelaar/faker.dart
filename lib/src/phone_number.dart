import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/utils/helper_utils.dart';
import 'package:faker_dart/src/utils/random_utils.dart';

/// {@macro phoneNumber}
class PhoneNumber {
  /// {@macro phoneNumber}
  PhoneNumber(this._faker);

  final Faker _faker;

  /// retuns a random phonenumber, an optional 'formatted' parameter can be
  /// provided that is formatted like '###-###-####'
  ///
  /// e.g. `faker.phoneNumber.phoneNumber() // 012-345-6789`
  String phoneNumber({String? format}) {
    final _format = format ?? phoneFormat();
    return HelperUtils.replaceSymbolWithNumber(_format);
  }

  /// returns a random phone number format like '###-###-####'
  ///
  /// e.g. `faker.phoneNumber.phoneFormat() // '###-###-####'
  String phoneFormat() {
    return RandomUtils.arrayElement(_faker.locale.phoneNumber.formats);
  }
}
