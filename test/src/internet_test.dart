import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/internet.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Internet internet;

  setUp(() {
    faker = MockFaker();
    internet = Internet(faker);
    when(() => faker.datatype).thenReturn(DataType());
  });

  test('get a random URL', () {
    when(() => faker.locale.hacker.adjective).thenReturn(['neural']);
    when(() => faker.locale.hacker.noun).thenReturn(['monitor']);
    when(() => faker.locale.internet.domainSuffix).thenReturn(['com']);

    final suffix = internet.domainName();
    expect(suffix, 'neural-monitor');

    final url = Uri.parse(internet.url());
    expect(url.hasScheme, isTrue);
    expect(url.isAbsolute, isTrue);
  });
  test('get a random ip', () {
    final ip = internet.ip();
    expect(ip.isNotEmpty, isTrue);
    expect(ip.split('.').length, 4);
  });

  test('get a random HTTP Method', () {
    final httpMethod = internet.httpMethod();
    expect(httpMethod.isNotEmpty, isTrue);
  });

  test('get random domain name', () {
    when(() => faker.locale.hacker.adjective).thenReturn(['neural']);
    when(() => faker.locale.hacker.noun).thenReturn(['monitor']);

    final suffix = internet.domainName();
    expect(suffix, 'neural-monitor');
  });

  test('get a valid (ish), randomized email address', () {
    final email = Faker.instance.internet.email();
    const regex = r'^\S+@\S+$';

    expect(RegExp(regex).hasMatch(email), isTrue);
  });

  test('assure no spaces in email', () {
    final email = Faker.instance.internet.email();
    expect(email.contains(' '), false);
  });
}
