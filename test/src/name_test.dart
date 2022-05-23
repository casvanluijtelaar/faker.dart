import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/name.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Name name;

  setUp(() {
    faker = MockFaker();
    name = Name(faker);
    when(() => faker.datatype).thenReturn(DataType());
  });

  test('firstName with genders', () {
    when(() => faker.locale.name.maleFirstName).thenReturn(['John']);
    when(() => faker.locale.name.femaleFirstName).thenReturn(['Lucy']);
    when(() => faker.locale.name.firstName).thenReturn(['Bert']);

    final male = name.firstName(gender: Gender.male);
    final female = name.firstName(gender: Gender.female);
    final neutral = name.firstName();

    expect(male, 'John');
    expect(female, 'Lucy');
    expect(neutral, 'Bert');
  });

  test('firstName without genders', () {
    when(() => faker.locale.name.maleFirstName).thenReturn(null);
    when(() => faker.locale.name.femaleFirstName).thenReturn(null);
    when(() => faker.locale.name.firstName).thenReturn(['Bert']);

    final male = name.firstName(gender: Gender.male);
    final female = name.firstName(gender: Gender.female);
    final neutral = name.firstName();

    expect(male, 'Bert');
    expect(female, 'Bert');
    expect(neutral, 'Bert');
  });

  test('middleName with genders', () {
    when(() => faker.locale.name.maleMiddleName).thenReturn(['John']);
    when(() => faker.locale.name.femaleMiddleName).thenReturn(['Lucy']);
    when(() => faker.locale.name.middleName).thenReturn(['Bert']);

    final male = name.middleName(gender: Gender.male);
    final female = name.middleName(gender: Gender.female);
    final neutral = name.middleName();

    expect(male, 'John');
    expect(female, 'Lucy');
    expect(neutral, 'Bert');
  });

  test('middleName without genders', () {
    when(() => faker.locale.name.maleMiddleName).thenReturn(null);
    when(() => faker.locale.name.femaleMiddleName).thenReturn(null);
    when(() => faker.locale.name.middleName).thenReturn(['Bert']);

    final male = name.middleName(gender: Gender.male);
    final female = name.middleName(gender: Gender.female);
    final neutral = name.middleName();

    expect(male, 'Bert');
    expect(female, 'Bert');
    expect(neutral, 'Bert');
  });

  test('lastName with genders', () {
    when(() => faker.locale.name.maleLastName).thenReturn(['John']);
    when(() => faker.locale.name.femaleLastName).thenReturn(['Lucy']);
    when(() => faker.locale.name.lastName).thenReturn(['Bert']);

    final male = name.lastName(gender: Gender.male);
    final female = name.lastName(gender: Gender.female);
    final neutral = name.lastName();

    expect(male, 'John');
    expect(female, 'Lucy');
    expect(neutral, 'Bert');
  });

  test('lastName without genders', () {
    when(() => faker.locale.name.maleLastName).thenReturn(null);
    when(() => faker.locale.name.femaleLastName).thenReturn(null);
    when(() => faker.locale.name.lastName).thenReturn(['Bert']);

    final male = name.lastName(gender: Gender.male);
    final female = name.lastName(gender: Gender.female);
    final neutral = name.lastName();

    expect(male, 'Bert');
    expect(female, 'Bert');
    expect(neutral, 'Bert');
  });

  test('gender', () {
    when(() => faker.locale.name.gender).thenReturn(['male']);
    when(() => faker.locale.name.binaryGender).thenReturn(['non']);
    expect(name.gender(), 'male');
    expect(name.gender(binary: true), 'non');
  });

  test('prefix with genders', () {
    when(() => faker.locale.name.malePrefix).thenReturn(['John']);
    when(() => faker.locale.name.femalePrefix).thenReturn(['Lucy']);
    when(() => faker.locale.name.prefix).thenReturn(['Bert']);

    final male = name.prefix(gender: Gender.male);
    final female = name.prefix(gender: Gender.female);
    final neutral = name.prefix();

    expect(male, 'John');
    expect(female, 'Lucy');
    expect(neutral, 'Bert');
  });

  test('prefix without genders', () {
    when(() => faker.locale.name.malePrefix).thenReturn(null);
    when(() => faker.locale.name.femalePrefix).thenReturn(null);
    when(() => faker.locale.name.prefix).thenReturn(['Bert']);

    final male = name.prefix(gender: Gender.male);
    final female = name.prefix(gender: Gender.female);
    final neutral = name.prefix();

    expect(male, 'Bert');
    expect(female, 'Bert');
    expect(neutral, 'Bert');
  });

  test('suffix', () {
    when(() => faker.locale.name.suffix).thenReturn(['son']);
    expect(name.suffix(), 'son');
  });

  test('jobDescriptor', () {
    when(() => faker.locale.name.title.descriptor).thenReturn(['h']);
    expect(name.jobDescriptor(), 'h');
  });

  test('jobSector', () {
    when(() => faker.locale.name.title.level).thenReturn(['h']);
    expect(name.jobSector(), 'h');
  });
  test('jobType', () {
    when(() => faker.locale.name.title.job).thenReturn(['h']);
    expect(name.jobType(), 'h');
  });

  test('jobtitle', () {
    when(() => faker.locale.name.title.descriptor).thenReturn(['h']);
    when(() => faker.locale.name.title.level).thenReturn(['h']);
    when(() => faker.locale.name.title.job).thenReturn(['h']);

    final result = name.jobTitle();

    expect(result, 'h h h');
  });

  test('fullName', () {
    when(() => faker.locale.name.malePrefix).thenReturn(['a']);
    when(() => faker.locale.name.femalePrefix).thenReturn(['a']);
    when(() => faker.locale.name.prefix).thenReturn(['a']);

    when(() => faker.locale.name.maleFirstName).thenReturn(['a']);
    when(() => faker.locale.name.femaleFirstName).thenReturn(['a']);
    when(() => faker.locale.name.firstName).thenReturn(['a']);

    when(() => faker.locale.name.maleMiddleName).thenReturn(['a']);
    when(() => faker.locale.name.femaleMiddleName).thenReturn(['a']);
    when(() => faker.locale.name.middleName).thenReturn(['a']);

    when(() => faker.locale.name.maleLastName).thenReturn(['a']);
    when(() => faker.locale.name.femaleLastName).thenReturn(['a']);
    when(() => faker.locale.name.lastName).thenReturn(['a']);

    when(() => faker.locale.name.suffix).thenReturn(['a']);

    final result = name.fullName();

    final match = result == 'a a a' || result == 'a a';
    expect(match, isTrue);
  });

  test('title', () {
    when(() => faker.locale.name.title.descriptor).thenReturn(['a']);
    when(() => faker.locale.name.title.level).thenReturn(['a']);
    when(() => faker.locale.name.title.job).thenReturn(['a']);

    final result = name.title();
    expect(result, 'a a a');
  });
}
