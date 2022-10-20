import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/utils/random_utils.dart';

/// {@macro internet}
class Internet {
  /// {@macro internet}
  Internet(this._faker);

  final Faker _faker;

  /// returns a random URL
  ///
  /// e.g. `faker.internet.url() // https://optical-sensor.com`
  String url() {
    var protocols = ['http', 'https'];
    final randomProtocol = RandomUtils.arrayElement(protocols);
    final domain = '${domainName()}.${domainSuffix()}';
    return '$randomProtocol://$domain';
  }

  /// returns a random domain name
  ///
  /// e.g. `faker.internet.domainName() // neural-monitor`
  String domainName() {
    final randomAdjective =
        RandomUtils.arrayElement(_faker.locale.hacker.adjective);
    final randomNoun = RandomUtils.arrayElement(_faker.locale.hacker.noun);

    return '$randomAdjective-$randomNoun'
        .replaceAll(RegExp(r'\\~#&*{}/:<>?|\"\s\b|\b\s'), '')
        .toLowerCase();
  }

  /// returns a random domain suffix
  ///
  /// e.g. `faker.internet.domainSuffix() // com`
  String domainSuffix() {
    return RandomUtils.arrayElement(_faker.locale.internet.domainSuffix);
  }

  /// returns a random HTTP method
  ///
  /// e.g. `faker.internet.httpMethod() // POST`
  String httpMethod() {
    var httpMethods = ['GET', 'POST', 'PUT', 'DELETE', 'PATCH'];
    return RandomUtils.arrayElement(httpMethods);
  }

  /// returns a random IPv4 Address
  ///
  /// e.g. `faker.internet.ip() // 67.185.47.31`
  String ip() {
    var result = List<int>.filled(4, 0, growable: false);

    for (var i = 0; i < 4; i++) {
      result[i] = _faker.datatype.number(max: 255);
    }
    return result.join('.');
  }

  /// returns a randomized valid email address
  ///
  /// e.g. `faker.internet.email() // cat12345@gmail.com`
  String email() {
    final entries = <String>[
      _faker.name.firstName(),
      _faker.name.lastName(),
      _faker.animal.type(),
      _faker.datatype.number().toString(),
      _faker.hacker.noun(),
    ];

    final contents = RandomUtils.arrayElements(entries, 2);
    final sections = ['_', '', '-', '.'];

    final start = contents.join(RandomUtils.arrayElement(sections));
    final end = RandomUtils.arrayElement(_faker.locale.internet.freeEmail);

    return '$start@$end'.replaceAll(' ', RandomUtils.arrayElement(sections));
  }
}
