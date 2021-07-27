import 'package:faker_dart/src/animal.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/faker.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Animal animal;

  setUp(() {
    faker = MockFaker();
    animal = Animal(faker);

    when(() => faker.datatype).thenReturn(DataType());
  });

  test('return a random animal type', () {
    when(() => faker.locale.animal.type).thenReturn(['dog']);
    final result = animal.type();

    expect(result, 'dog');
  });

  test('return a random animal', () {
    when(() => faker.locale.animal.bear).thenReturn(['dog']);
    when(() => faker.locale.animal.bird).thenReturn(['dog']);
    when(() => faker.locale.animal.cat).thenReturn(['dog']);
    when(() => faker.locale.animal.cetacean).thenReturn(['dog']);
    when(() => faker.locale.animal.cow).thenReturn(['dog']);
    when(() => faker.locale.animal.crocodilia).thenReturn(['dog']);
    when(() => faker.locale.animal.dog).thenReturn(['dog']);
    when(() => faker.locale.animal.fish).thenReturn(['dog']);
    when(() => faker.locale.animal.horse).thenReturn(['dog']);
    when(() => faker.locale.animal.insect).thenReturn(['dog']);
    when(() => faker.locale.animal.lion).thenReturn(['dog']);
    when(() => faker.locale.animal.rabbit).thenReturn(['dog']);
    when(() => faker.locale.animal.snake).thenReturn(['dog']);

    final result = animal.animal();
    expect(result, 'dog');
  });

  test('return a random dog', () {
    when(() => faker.locale.animal.dog).thenReturn(['dog']);
    final result = animal.dog();

    expect(result, 'dog');
  });

  test('return a random cat', () {
    when(() => faker.locale.animal.cat).thenReturn(['dog']);
    final result = animal.cat();

    expect(result, 'dog');
  });

  test('return a random snake', () {
    when(() => faker.locale.animal.snake).thenReturn(['dog']);
    final result = animal.snake();

    expect(result, 'dog');
  });
  test('return a random snake', () {
    when(() => faker.locale.animal.snake).thenReturn(['dog']);
    final result = animal.snake();

    expect(result, 'dog');
  });

  test('return a random bear', () {
    when(() => faker.locale.animal.bear).thenReturn(['dog']);
    final result = animal.bear();

    expect(result, 'dog');
  });

  test('return a random lion', () {
    when(() => faker.locale.animal.lion).thenReturn(['dog']);
    final result = animal.lion();

    expect(result, 'dog');
  });

  test('return a random cetacean', () {
    when(() => faker.locale.animal.cetacean).thenReturn(['dog']);
    final result = animal.cetacean();

    expect(result, 'dog');
  });

  test('return a random horse', () {
    when(() => faker.locale.animal.horse).thenReturn(['dog']);
    final result = animal.horse();

    expect(result, 'dog');
  });

  test('return a random bird', () {
    when(() => faker.locale.animal.bird).thenReturn(['dog']);
    final result = animal.bird();

    expect(result, 'dog');
  });

  test('return a random cow', () {
    when(() => faker.locale.animal.cow).thenReturn(['dog']);
    final result = animal.cow();

    expect(result, 'dog');
  });

  test('return a random crocodilia', () {
    when(() => faker.locale.animal.crocodilia).thenReturn(['dog']);
    final result = animal.crocodilia();

    expect(result, 'dog');
  });

  test('return a random insect', () {
    when(() => faker.locale.animal.insect).thenReturn(['dog']);
    final result = animal.insect();

    expect(result, 'dog');
  });

  test('return a random fish', () {
    when(() => faker.locale.animal.fish).thenReturn(['dog']);
    final result = animal.fish();

    expect(result, 'dog');
  });

  test('return a random rabbit', () {
    when(() => faker.locale.animal.rabbit).thenReturn(['dog']);
    final result = animal.rabbit();

    expect(result, 'dog');
  });
}
