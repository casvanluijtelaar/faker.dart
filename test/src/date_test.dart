import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/date.dart';
import 'package:faker_dart/src/faker.dart';

import 'package:mocktail/mocktail.dart';
import 'package:test/test.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Date date;

  setUp(() {
    faker = MockFaker();
    date = Date(faker);

    when(() => faker.datatype).thenReturn(DataType());
  });

  test('generate a valid date in the past', () {
    final result = date.past(DateTime.now());

    expect(result.isBefore(DateTime.now()), isTrue);
    expect(
      result.isAfter(DateTime.now().subtract(const Duration(days: 101 * 365))),
      isTrue,
    );
  });

  test('generate a valid date in the future', () {
    final result = date.future(DateTime.now());

    expect(result.isAfter(DateTime.now()), isTrue);
    expect(
      result.isBefore(DateTime.now().add(const Duration(days: 101 * 365))),
      isTrue,
    );
  });

  test('generate a valid date in between two other dates', () {
    final start = DateTime.now();
    final end = start.add(const Duration(days: 365));

    final result = date.between(start, end);

    final isInbetween = result.isAfter(start) && result.isBefore(end);
    expect(isInbetween, isTrue);
  });

  test('generate a valid month name', () {
    when(() => faker.locale.date.month.wide).thenReturn(['January']);

    final wide = date.month(abbreviated: false);
    expect(wide, 'January');

    when(() => faker.locale.date.month.abbr).thenReturn(['Jan']);

    final abbr = date.month(abbreviated: true);
    expect(abbr, 'Jan');
  });

  test('generate a valid weekday name', () {
    when(() => faker.locale.date.weekday.wide).thenReturn(['Monday']);

    final wide = date.weekday(abbreviated: false);
    expect(wide, 'Monday');

    when(() => faker.locale.date.weekday.abbr).thenReturn(['Mon']);

    final abbr = date.weekday(abbreviated: true);
    expect(abbr, 'Mon');
  });
}
