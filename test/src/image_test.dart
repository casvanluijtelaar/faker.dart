import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'test_utils.dart';

void main() {
  late Faker faker;
  late Image image;

  setUp(() {
    faker = MockFaker();
    image = Image(faker);

    when(() => faker.datatype).thenReturn(DataType());
  });

  test('image returns a valid url', () {
    final url = image.image();
    expect(url.contains('http'), isTrue);
  });
}
