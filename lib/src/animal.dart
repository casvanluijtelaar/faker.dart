import 'package:faker_dart/src/utils/random_utils.dart';

import 'faker.dart';

/// {@macro animal}
class Animal {
  /// {@macro animal}
  Animal(this._faker);

  final Faker _faker;

  /// returns a random animal type, aka one of the Animal module's method
  /// names
  String type() => RandomUtils.arrayElement(_faker.locale.animal.type);

  /// returns a completely random animal.
  String animal() {
    final types = [
      ...[dog, cat, snake, bear, lion, cetacean, insect],
      ...[crocodilia, cow, bird, fish, rabbit, horse],
    ];

    final index = _faker.datatype.number(max: types.length);
    return types[index]();
  }

  /// returns a random dog breed
  String dog() => RandomUtils.arrayElement(_faker.locale.animal.dog);

  /// returns a random cat breed
  String cat() => RandomUtils.arrayElement(_faker.locale.animal.cat);

  /// returns a random snake breed
  String snake() => RandomUtils.arrayElement(_faker.locale.animal.snake);

  /// returns a random bear breed
  String bear() => RandomUtils.arrayElement(_faker.locale.animal.bear);

  /// returns a random lion breed
  String lion() => RandomUtils.arrayElement(_faker.locale.animal.lion);

  /// returns a random catacean breed
  String cetacean() => RandomUtils.arrayElement(_faker.locale.animal.cetacean);

  /// returns a random horse breed
  String horse() => RandomUtils.arrayElement(_faker.locale.animal.horse);

  /// returns a random bird breed
  String bird() => RandomUtils.arrayElement(_faker.locale.animal.bird);

  /// returns a random cow breed
  String cow() => RandomUtils.arrayElement(_faker.locale.animal.cow);

  /// returns a random fish breed
  String fish() => RandomUtils.arrayElement(_faker.locale.animal.fish);

  /// returns a random crocodilia breed
  String crocodilia() =>
      RandomUtils.arrayElement(_faker.locale.animal.crocodilia);

  /// returns a random insect breed
  String insect() => RandomUtils.arrayElement(_faker.locale.animal.insect);

  /// returns a random rabbit breed
  String rabbit() => RandomUtils.arrayElement(_faker.locale.animal.rabbit);
}
