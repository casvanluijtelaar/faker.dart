import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/lorem.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Lorem lorem;

  setUp(() {
    faker = MockFaker();
    lorem = Lorem(faker);
    when(() => faker.datatype).thenReturn(DataType());
  });

  test('generate a correct word', () {
    when(() => faker.locale.lorem.words).thenReturn(['hello']);
    expect(lorem.word(), 'hello');
    expect(lorem.word(length: 5), 'hello');
  });

  test('generate a correct sentence', () {
    when(() => faker.locale.lorem.words).thenReturn(['hello']);
    expect(lorem.sentence(), 'Hello hello hello hello hello.');
    expect(lorem.sentence(wordCount: 2), 'Hello hello.');
  });

  test('generate a correct paragraph', () {
    when(() => faker.locale.lorem.words).thenReturn(['hello']);
    expect(
      lorem.paragraph(),
      'Hello hello hello hello hello. '
      'Hello hello hello hello hello. '
      'Hello hello hello hello hello.',
    );
    expect(
      lorem.paragraph(sentenceCount: 2),
      'Hello hello hello hello hello. '
      'Hello hello hello hello hello.',
    );
  });

  test('generate a correct text', () {
    when(() => faker.locale.lorem.words).thenReturn(['hello']);
    final text = lorem.text();

    expect(text.length, greaterThan(0));
    expect(text.split('.').length, greaterThan(0));
    expect(text.split('\n').length, greaterThanOrEqualTo(3));
  });
}
