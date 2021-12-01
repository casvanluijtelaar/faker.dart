import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/phone_number.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late PhoneNumber phoneNumber;

  setUp(() {
    faker = MockFaker();
    phoneNumber = PhoneNumber(faker);
  });

  test('generate a correct phoneNumber', () {
    when(() => faker.locale.phoneNumber.formats).thenReturn(['###-###-####']);
    expect(phoneNumber.phoneNumber(), matches(RegExp(r'([0-9]|[-])+')));
  });

  test('generate a correct phoneformat', () {
    when(() => faker.locale.phoneNumber.formats).thenReturn(['###-###-####']);
    expect(phoneNumber.phoneFormat(), '###-###-####');
  });
}
