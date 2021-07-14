import 'dart:convert';

import 'package:faker_dart/src/datatype.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late DataType datatype;

  setUp(() {
    datatype = DataType();
  });

  test('integer', () {
    final result = datatype.number(min: 1, max: 4);
    expect(result >= 1 && result <= 4, isTrue);
  });

  test('double', () {
    final result = datatype.float(min: 0.5565, max: 3.5, precision: 2);
    expect(result >= 0.5 && result <= 3.5, isTrue);
  });

  test('datetime', () {
    final result = datatype.dateTime(min: 2000, max: 2010);
    expect(result.isAfter(DateTime(2000)), isTrue);
    expect(result.isBefore(DateTime(2010)), isTrue);
  });

  test('string', () {
    final result = datatype.string(length: 20);
    expect(result.length, 20);
  });

  test('bool', () {
    final result = datatype.boolean();
    expect(result == true || result == false, isTrue);
  });

  test('hex', () {
    final result = datatype.hexaDecimal(length: 6);
    expect(result.substring(0, 2), '0x');
    expect(result.substring(2, result.length).length, 6);
  });

  test('json', () {
    final result = datatype.json();
    expect(jsonDecode(result) is Map, isTrue);
    expect((jsonDecode(result) as Map).keys.length, 7);
  });

  test('list', () {
    final result = datatype.list(length: 40);
    expect(result.length, 40);
    expect(result.any((element) => element != null), isTrue);
  });
}
