import 'package:faker_dart/src/utils/random_utils.dart';

import '../faker_dart.dart';

/// {@macro music}
class Music {
  /// {@macro music}
  const Music(this._faker);

  final Faker _faker;

  /// generates a random music genre
  ///
  /// e.g. `Faker.instance.music.genre() // Rock`
  String genre() {
    return RandomUtils.arrayElement(_faker.locale.music.genre);
  }
}
