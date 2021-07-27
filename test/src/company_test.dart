import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/company.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Company company;
  late DataType datatype;

  setUp(() {
    faker = MockFaker();
    company = Company(faker);
    datatype = MockDataType();

    when(() => faker.datatype).thenReturn(datatype);
  });

  test('return a valid name', () {
    when(() => datatype.number(max: 2)).thenReturn(0);
    expect(company.companyName().split(' ').length, 2);

    when(() => datatype.number(max: 2)).thenReturn(1);
    expect(company.companyName().split(' ').length, 3);

    when(() => datatype.number(max: 2)).thenReturn(2);
    expect(company.companyName().split(' ').length, 4);
  });

  test('return a valid suffix', () {
    when(() => faker.locale.company.suffix).thenReturn(['inc']);
    final result = company.companySuffix();

    expect(result, 'inc');
  });

  test('return a valid catchPhrase', () {
    final result = Faker.instance.company.catchPhrase();
    expect(result.split(' ').length >= 3, isTrue);
  });

  test('return a valid bs', () {
    final result = Faker.instance.company.bs();
    expect(result.split(' ').length >= 3, isTrue);
  });

  test('return a valid catchPhraseAdjective', () {
    when(() => faker.locale.company.adjective).thenReturn(['inc']);
    final result = company.catchPhraseAdjective();

    expect(result, 'inc');
  });

  test('return a valid catchPhraseDescriptor', () {
    when(() => faker.locale.company.descriptor).thenReturn(['inc']);
    final result = company.catchPhraseDescriptor();

    expect(result, 'inc');
  });

  test('return a valid catchPhraseNoun', () {
    when(() => faker.locale.company.noun).thenReturn(['inc']);
    final result = company.catchPhraseNoun();

    expect(result, 'inc');
  });

  test('return a valid bsAdjective', () {
    when(() => faker.locale.company.bsAdjective).thenReturn(['inc']);
    final result = company.bsAdjective();

    expect(result, 'inc');
  });

  test('return a valid bsBuzz', () {
    when(() => faker.locale.company.bsVerb).thenReturn(['inc']);
    final result = company.bsBuzz();

    expect(result, 'inc');
  });

  test('return a valid bsNoun', () {
    when(() => faker.locale.company.bsNoun).thenReturn(['inc']);
    final result = company.bsNoun();

    expect(result, 'inc');
  });
}
