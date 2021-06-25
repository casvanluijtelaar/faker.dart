import 'package:faker_dart/src/random.dart';

import 'faker.dart';

class Address {
  const Address(this._faker);

  final Faker _faker;

  /**
   * Generates random zipcode from format. If format is not specified, the
   * locale's zip format is used.
   */
  String zipCode() {
    final localFormat = _faker.locale.address.postcode;
    final format = Randoms.arrayElement(localFormat ?? []);

    return _faker.helpers.replaceSymbols(format);
  }

  /**
   * Generates random zipcode from state abbreviation. If state abbreviation is
   * not specified, a random zip code is generated according to the locale's zip format.
   * Only works for locales with postcode_by_state definition. If a locale does not
   * have a postcode_by_state definition, a random zip code is generated according
   * to the locale's zip format.
   */
  String zipCodeByState(String state) {
    final zipRange = _faker.locale.address.postcodeByState!.indexOf(state);
    if (zipRange != -1) return _faker.datatype.number(max: zipRange).toString();
    return zipCode();
  }

  /**
   * Generates a random localized city name. The format string can contain any
   * method provided by faker wrapped in `{{}}`, e.g. `{{name.firstName}}` in
   * order to build the city name.
   *
   * If no format string is provided one of the following is randomly used:
   *
   * * `{{address.cityPrefix}} {{name.firstName}}{{address.citySuffix}}`
   * * `{{address.cityPrefix}} {{name.firstName}}`
   * * `{{name.firstName}}{{address.citySuffix}}`
   * * `{{name.lastName}}{{address.citySuffix}}`
   * * `{{address.cityName}}` when city name is available
   *
   */
  String city({String? format}) {
    final formats = [
      '{{address.cityPrefix}} {{name.firstName}}{{address.citySuffix}}',
      '{{address.cityPrefix}} {{name.firstName}}',
      '{{name.firstName}}{{address.citySuffix}}',
      '{{name.lastName}}{{address.citySuffix}}'
    ];

    if (format != null) {
      formats.add(format);
    }

    final index = _faker.datatype.number(max: formats.length - 1);

    return _faker.fake(formats[index]);
  }

  /**
   * Return a random localized city prefix
   */
  String cityPrefix() {
    return Randoms.arrayElement(_faker.locale.address.cityPrefix!);
  }

  /**
   * Return a random localized city suffix
   */
  String citySuffix() {
    return Randoms.arrayElement(_faker.locale.address.citySuffix!);
  }

  /**
   * Returns a random city name
   */
  String cityName() {
    return Randoms.arrayElement(_faker.locale.address.cityName!);
  }

/**
   * Returns a random localized street name
   */

  String streetName() {
    var suffix = streetSuffix();
    if (suffix != "") suffix = " " + suffix;

    return _faker.datatype.boolean()
        ? _faker.name.lastName() + suffix
        : _faker.name.firstName() + suffix;
  }

    /**
   * streetSuffixx
   */
  String streetSuffix() {
    return Randoms.arrayElement(_faker.locale.address.streetSuffix!);
  }

}
