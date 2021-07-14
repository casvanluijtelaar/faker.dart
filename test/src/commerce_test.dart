import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/commerce.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'test_utils.dart';

void main() {
  late Faker faker;
  late Commerce commerce;

  setUp(() {
    faker = MockFaker();
    commerce = Commerce(faker);

    when(() => faker.datatype).thenReturn(DataType());
  });

  test('random color', () {
    when(() => faker.locale.commerce.color).thenReturn(['red']);

    final result = commerce.color();
    expect(result, 'red');
  });

  test('random department', () {
    when(() => faker.locale.commerce.department).thenReturn(['red']);

    final result = commerce.department();
    expect(result, 'red');
  });

  test('random department', () {
    when(() => faker.locale.commerce.productName.adjective).thenReturn(['a']);
    when(() => faker.locale.commerce.productName.material).thenReturn(['b']);
    when(() => faker.locale.commerce.productName.product).thenReturn(['c']);

    final result = commerce.productName();
    expect(result, 'a b c');
  });

  test('random price', () {
    final result = commerce.price(min: 20, max: 30, decimals: 2, symbol: '€');
    expect(result[0], '€');

    final price = double.tryParse(result.substring(1));
    // make sure the string can be parsed into a valid double
    expect(price, isNotNull);
    // make sure the price is between the provided values
    expect(price! >= 20 && price <= 30, isTrue);
  });

  test('random product Adjective', () {
    when(() => faker.locale.commerce.productName.adjective).thenReturn(['red']);

    final result = commerce.productAdjective();
    expect(result, 'red');
  });

  test('random product material', () {
    when(() => faker.locale.commerce.productName.material).thenReturn(['red']);

    final result = commerce.productMaterial();
    expect(result, 'red');
  });
  test('random product', () {
    when(() => faker.locale.commerce.productName.product).thenReturn(['red']);

    final result = commerce.product();
    expect(result, 'red');
  });
  test('random product description', () {
    when(() => faker.locale.commerce.productDescription).thenReturn(['red']);

    final result = commerce.productDescription();
    expect(result, 'red');
  });
}
