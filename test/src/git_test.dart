import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/datatype.dart';
import 'package:faker_dart/src/git.dart';
import 'package:faker_dart/src/hacker.dart';
import 'package:test/test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockHacker extends Mock implements Hacker {}

void main() {
  late Faker faker;
  late Git git;

  setUp(() {
    faker = MockFaker();
    git = Git(faker);
  });

  test('return a correctly formatted branch name', () {
    final hacker = MockHacker();
    when(() => faker.hacker).thenReturn(hacker);

    when(hacker.noun).thenReturn('noun');
    when(hacker.verb).thenReturn('verb');

    expect(git.branch(), 'noun-verb');
  });

  test('return a correctly formatted commit entry', () {
    final dt = DataType();
    when(() => faker.datatype).thenReturn(dt);

    final result = git.commitEntry();
    final resultWithMerge = git.commitEntry(merge: true);

    expect(result.contains('Author'), isTrue);
    expect(resultWithMerge.contains('Merge'), isTrue);
  });

  test('return a vallid commit message', () {
    expect(git.commitMessage(),
        '{{hacker.verb}} {{hacker.adjective}} {{hacker.noun}}');
  });

  test('return a full commit sha', () {
    expect(git.commitSha().length, 40);
  });

  test('return a short commit sha', () {
    expect(git.shortSha().length, 7);
  });
}
