import 'package:faker_dart/src/utils/random_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('get one random array element', () {
    final result = RandomUtils.arrayElement([1]);
    expect(result, 1);
  });

  test('get  random array elements', () {
    final result = RandomUtils.arrayElements([1], 3);
    expect(result, [1, 1, 1]);
  });

  test('get  random array elements from empty array or null', () {
    final result = RandomUtils.arrayElements(null, 3);
    expect(result, []);
  });
}
