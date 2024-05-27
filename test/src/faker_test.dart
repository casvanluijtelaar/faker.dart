import 'package:faker_dart/faker_dart.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  test('get singleton', () {
    final faker1 = Faker.instance;
    final faker2 = Faker.instance;
    expect(faker1, faker2);
  });

  test('get unique faker', () {
    final faker1 = Faker.unique()..setLocale(FakerLocaleType.cz);
    final faker2 = Faker.unique();
    expect(faker1 != faker2, isTrue);
  });

  test('get the current locale', () {
    final locale = Faker.instance.locale;
    expect(locale, isNotNull);
  });

  test('test setting an integrated locale', () {
    Faker.instance.setLocale(FakerLocaleType.nl);
    expect(Faker.instance.locale.address.buildingNumber!.first, '#');
  });

  test('test setting an custom locale', () {
    final locale = MockFakerLocale();
    Faker.instance.setCustomLocale(locale);
    expect(Faker.instance.locale, locale);
  });

  test('returns correct faker modules', () {
    expect(Faker.instance.image, isNotNull);
    expect(Faker.instance.name, isNotNull);
    expect(Faker.instance.address, isNotNull);
    expect(Faker.instance.animal, isNotNull);
    expect(Faker.instance.commerce, isNotNull);
    expect(Faker.instance.company, isNotNull);
    expect(Faker.instance.database, isNotNull);
    expect(Faker.instance.music, isNotNull);
    expect(Faker.instance.hacker, isNotNull);
    expect(Faker.instance.git, isNotNull);
    expect(Faker.instance.date, isNotNull);
    expect(Faker.instance.phoneNumber, isNotNull);
    expect(Faker.instance.lorem, isNotNull);
    expect(Faker.instance.internet, isNotNull);
  });

  test('faker.fake correctly interpolates string', () {
    final result = Faker.instance
        .fake('{{name.lastName}} {{name.firstName}} {{name.suffix}}');

    expect(!result.contains('{{') && !result.contains('}}'), isTrue);
    expect(result.split(' ').length, 3);
  });

  test('faker.fake will throw argumentError if module doesn\'t exist', () {
    expect(() => Faker.instance.fake('{{cookie.name}}'), throwsArgumentError);
    expect(() => Faker.instance.fake('{{name.cookie}}'), throwsArgumentError);
  });
}
