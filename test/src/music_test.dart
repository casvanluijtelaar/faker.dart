import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/music.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

void main() {
  late Faker faker;
  late Music music;

  setUp(() {
    faker = MockFaker();
    music = Music(faker);
  });

  test('return a random genre', () {
    when(() => faker.locale.music.genre).thenReturn(['rock']);
    expect(music.genre(), 'rock');
  });
}
