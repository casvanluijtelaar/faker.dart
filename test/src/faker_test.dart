import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/utils/locale_utils.dart';
import 'package:flutter_test/flutter_test.dart';

import '../test_utils.dart';

void main() {
  test('get singleton', () {
    final faker1 = Faker.instance;
    final faker2 = Faker.instance;
    expect(faker1, faker2);
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
