import 'package:faker_dart/src/utils/random_utils.dart';

import '../faker_dart.dart';

/// {@macro database}
class Database {
  /// {@macro database}
  const Database(this._faker);

  final Faker _faker;

  /// generates a random database column name
  ///
  /// e.g. `Faker.instance.database.column(); // id`
  String column() {
    return RandomUtils.arrayElement(_faker.locale.database.column);
  }

  /// generates a random database column type
  ///
  /// e.g. `Faker.instance.database.type(); // byte`
  String type() {
    return RandomUtils.arrayElement(_faker.locale.database.type);
  }

  /// generates a random database collation
  ///
  /// e.g. `Faker.instance.database.collation(); // utf8_bin`
  String collation() {
    return RandomUtils.arrayElement(_faker.locale.database.collation);
  }

  /// generates a random database storage engine
  ///
  /// e.g. `Faker.instance.database.engine(); // InnoDB`
  String engine() {
    return RandomUtils.arrayElement(_faker.locale.database.engine);
  }
}
