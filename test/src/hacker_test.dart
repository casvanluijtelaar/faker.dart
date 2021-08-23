import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/hacker.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Hacker hacker;

  setUp(() {
    faker = MockFaker();
    hacker = Hacker(faker);
  });

  test('generate a correct abbreviation', () {
    when(() => faker.locale.hacker.abbreviation).thenReturn(['tcp']);
    expect(hacker.abbreviation(), 'tcp');
  });

  test('generate a correct adjective', () {
    when(() => faker.locale.hacker.adjective).thenReturn(['adjective']);
    expect(hacker.adjective(), 'adjective');
  });

  test('generate a correct noun', () {
    when(() => faker.locale.hacker.noun).thenReturn(['noun']);
    expect(hacker.noun(), 'noun');
  });

  test('generate a correct verb', () {
    when(() => faker.locale.hacker.verb).thenReturn(['verb']);
    expect(hacker.verb(), 'verb');
  });

  test('generate a correct ingverb', () {
    when(() => faker.locale.hacker.ingverb).thenReturn(['ingverb']);
    expect(hacker.ingverb(), 'ingverb');
  });

  test('generate a correct phrase', () {
    when(() => faker.locale.hacker.phrase).thenReturn(['phrase']);
    expect(hacker.phrase(), 'phrase');
  });
}
