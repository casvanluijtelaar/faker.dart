import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/utils/random_utils.dart';

/// {@macro hacker}
class Hacker {
  /// {@macro hacker}
  Hacker(this._faker);

  final Faker _faker;

  /// retuns a random hacker related abbreviation
  ///
  /// e.g. `faker.hacker.abbreviation() // TCP`
  String abbreviation() {
    return RandomUtils.arrayElement(_faker.locale.hacker.abbreviation);
  }

  /// retuns a random hacker related adjective
  ///
  /// e.g. `faker.hacker.adjective() // auxiliary`
  String adjective() {
    return RandomUtils.arrayElement(_faker.locale.hacker.adjective);
  }

  /// retuns a random hacker related noun
  ///
  /// e.g. `faker.hacker.noun() // driver`
  String noun() {
    return RandomUtils.arrayElement(_faker.locale.hacker.noun);
  }

  /// retuns a random hacker related verb
  ///
  /// e.g. `faker.hacker.verb() // hack`
  String verb() {
    return RandomUtils.arrayElement(_faker.locale.hacker.verb);
  }

  /// retuns a random hacker related verb ading in `ing`
  ///
  /// e.g. `faker.hacker.ingverb() // hacking`
  String ingverb() {
    return RandomUtils.arrayElement(_faker.locale.hacker.ingverb);
  }

  /// retuns a random hacker related phrase
  String phrase() {
    final phrase = RandomUtils.arrayElement(_faker.locale.hacker.phrase);
    return _faker.fake(phrase);
  }
}
