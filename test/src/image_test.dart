import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/image.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Image image;
  late DataType dataype;

  setUp(() {
    faker = MockFaker();
    image = Image(faker);
    dataype = MockDataType();

    when(() => faker.datatype).thenReturn(dataype);
  });

  test('image returns a valid url', () {
    when(() => dataype.number(max: 2)).thenReturn(0);
    final unsplash = image.image();
    expect(unsplash.contains('unsplash'), isTrue);

    when(() => dataype.number(max: 2)).thenReturn(1);
    final lorempixel = image.image();
    expect(lorempixel.contains('lorempixel'), isTrue);

    when(() => dataype.number(max: 2)).thenReturn(2);
    final lorempicsum = image.image();
    expect(lorempicsum.contains('picsum'), isTrue);
  });
}
