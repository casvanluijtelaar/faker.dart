import 'package:faker_dart/src/models/faker_locale.dart';

class Address {
  const Address(this.locale);

  final FakerLocale locale;

  String zipCode() {
    return '';
  }
}
