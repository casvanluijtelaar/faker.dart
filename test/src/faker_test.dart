import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/name.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import 'test_utils.dart';

void main() {
  late Faker faker;
  late Name name;
  late DataType datatype;

  setUp(() {
    faker = MockFaker();
    name = Name(faker);
    datatype = DataType();
    when(() => faker.name).thenReturn(name);
    when(() => faker.datatype).thenReturn(datatype);
  });

  test('fake string', () {
    when(() => faker.name.firstName()).thenReturn('Bert');
    when(() => faker.datatype.boolean()).thenReturn(true);

    final result = faker.fake('{{name.firstName}}, {{datatype.boolean}}');

    expect(result, 'Bert, true');
  });
}
