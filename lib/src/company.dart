import 'package:faker_dart/src/utils/random_utils.dart';

import '../faker_dart.dart';

/// {@macro company}
class Company {
  /// {@macro company}
  Company(this._faker);

  final Faker _faker;

  /// retuns a random company name
  ///
  /// e.g. `faker.company.companyName() // Johnson Inc`
  String companyName() {
    final formats = [
      '{{name.lastName}} {{company.companySuffix}}',
      '{{name.lastName}} - {{name.lastName}}',
      '{{name.lastName}}, {{name.lastName}} and {{name.lastName}}'
    ];

    final format = formats[_faker.datatype.number(max: formats.length - 1)];
    return _faker.fake(format);
  }

  /// retuns a random company suffix
  ///
  /// e.g. `faker.company.companySuffix() // Inc`
  String companySuffix() {
    return RandomUtils.arrayElement(_faker.locale.company.suffix);
  }

  /// return a random company catch phrase
  ///
  /// e.g. `faker.company.catchPhrase() // Adaptive 24 hour ability`
  String catchPhrase() {
    return _faker.fake(
        // ignore: lines_longer_than_80_chars
        '{{company.catchPhraseAdjective}} {{company.catchPhraseDescriptor}} {{company.catchPhraseNoun}}');
  }

  /// returns a random company b*llsh*t quote
  ///
  /// e.g. `faker.company.bs() // implement clicks-and-mortar synergies`
  String bs() {
    return _faker
        .fake('{{company.bsBuzz}} {{company.bsAdjective}} {{company.bsNoun}}');
  }

  /// returns a random catch phrase adjective
  ///
  /// e.g. `faker.company.catchPhraseAdjective() // adaptive`
  String catchPhraseAdjective() {
    return RandomUtils.arrayElement(_faker.locale.company.adjective);
  }

  /// returns a random catch phrase descriptor
  ///
  /// e.g. `faker.company.catchPhraseDescriptor() // client-server`
  String catchPhraseDescriptor() {
    return RandomUtils.arrayElement(_faker.locale.company.descriptor);
  }

  /// returns a random catch phrase noun
  ///
  /// e.g. `faker.company.catchPhraseNoun() // ability`
  String catchPhraseNoun() {
    return RandomUtils.arrayElement(_faker.locale.company.noun);
  }

  /// returns a random b*llsh*t phrase adjective
  ///
  /// e.g. `faker.company.bsAdjective() // clicks-and-mortar`
  String bsAdjective() {
    return RandomUtils.arrayElement(_faker.locale.company.bsAdjective);
  }

  /// returns a random b*llsh*t phrase buzz word
  ///
  /// e.g. `faker.company.bsAdjective() // implement`
  String bsBuzz() {
    return RandomUtils.arrayElement(_faker.locale.company.bsVerb);
  }

  /// returns a random b*llsh*t phrase noun
  ///
  /// e.g. `faker.company.bsAdjective() // synergies`
  String bsNoun() {
    return RandomUtils.arrayElement(_faker.locale.company.bsNoun);
  }
}
