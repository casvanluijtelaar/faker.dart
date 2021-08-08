import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/database.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Database database;

  setUp(() {
    faker = MockFaker();
    database = Database(faker);
  });

  test('return a random column', () {
    when(() => faker.locale.database.column).thenReturn(['id']);
    expect(database.column(), 'id');
  });

  test('return a random type', () {
    when(() => faker.locale.database.type).thenReturn(['char']);
    expect(database.type(), 'char');
  });

  test('return a random collation', () {
    when(() => faker.locale.database.collation).thenReturn(['uft8']);
    expect(database.collation(), 'uft8');
  });

  test('return a random engine', () {
    when(() => faker.locale.database.engine).thenReturn(['mysql']);
    expect(database.engine(), 'mysql');
  });
}
