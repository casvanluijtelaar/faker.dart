import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/address.dart';
import 'package:flutter_test/flutter_test.dart';

import 'test_utils.dart';

void main() {
  late Faker faker;
  late Address address;

  setUp(() {
    faker = MockFaker();
    address = Address(faker);
  });

  test('return correctly formatted zipcode', () {
    final zipcode = address.zipCode(format: '-###');

    expect(zipcode.length, 4);
    expect(zipcode[0], '-');
    expect(!zipcode.contains('#'), isTrue);
  });

  
}
