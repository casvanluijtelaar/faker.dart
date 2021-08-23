import 'package:faker_dart/src/utils/random_utils.dart';
import '../faker_dart.dart';

/// {@macro git}
class Git {
  /// {@macro git}
  Git(this._faker);

  final Faker _faker;

  static const _hexChars = [
    ...['0', '1', '2', '3', '4', '5', '6', '7', '8', '9'],
    ...['a', 'b', 'c', 'd', 'e', 'f'],
  ];

  /// retuns a random git branch name
  ///
  /// e.g. `faker.git.branch() // TCP-hack`
  String branch() {
    final noun = _faker.hacker.noun().replaceAll(' ', '-');
    final verb = _faker.hacker.verb().replaceAll(' ', '-');

    return '$noun-$verb';
  }

  /// retuns a random git commit entry
  ///
  /// e.g. `faker.git.commitEntry() // commit EFA567820BB merge: 454F ...`
  String commitEntry({bool merge = false}) {
    var entry = 'commit {{git.commitSha}}\n';

    if (merge || _faker.datatype.number(max: 4) == 0) {
      entry += 'Merge: {{git.shortSha}} {{git.shortSha}}\n';
    }

    entry +=
        'Author: {{name.firstName}} {{name.lastName}} <{{internet.email}}>\n';
    entry += 'Date: ${DateTime.now()}\n';
    entry += '{{git.commitMessage}}';

    return _faker.fake(entry);
  }

  /// retuns a random git commit message
  ///
  /// e.g. `faker.git.commitMessage()`
  String commitMessage() {
    const format = '{{hacker.verb}} {{hacker.adjective}} {{hacker.noun}}';
    return _faker.fake(format);
  }

  /// retuns a random 40 character git sha
  ///
  /// e.g. `faker.git.commitSha()`
  String commitSha() {
    var commit = '';

    for (var i = 0; i < 40; i++) {
      commit += RandomUtils.arrayElement(_hexChars);
    }
    return commit;
  }

  /// retuns a random 7 character git sha
  ///
  /// e.g. `faker.git.shortSha()`
  String shortSha() {
    var commit = '';

    for (var i = 0; i < 7; i++) {
      commit += RandomUtils.arrayElement(_hexChars);
    }
    return commit;
  }
}
