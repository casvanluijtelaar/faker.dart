import 'package:faker_dart/faker_dart.dart';
import 'package:faker_dart/src/utils/random_utils.dart';

/// {@macro lorem}
class Lorem {
  /// {@macro lorem}
  Lorem(this._faker);

  final Faker _faker;

  /// retuns a random word with a random length, you can provide a word length
  /// if you're looking for specific word sizes
  ///
  /// e.g. `faker.lorem.word() // hello`
  String word({int? length}) {
    final words = length == null
        ? _faker.locale.lorem.words
        : _faker.locale.lorem.words!.where((w) => w.length == length).toList();
    return RandomUtils.arrayElement(words);
  }

  /// returns a random sentence, with a default length of 5 words
  ///
  /// e.g. `faker.lorem.sentence(wordCount: 2) // 'Hello world.`
  String sentence({int wordCount = 5}) {
    final _words = List<String>.generate(wordCount, (i) => word());
    // ignore: lines_longer_than_80_chars
    return '${_words.join(' ')[0].toUpperCase()}${_words.join(' ').substring(1)}.';
  }

  /// returns a randomly generated paragraph,
  ///  with a default length of 3 sentences
  ///
  /// e.g. `faker.lorem.paragraph(sentenceCount: 2) // 'Hello world. What's up?'`
  String paragraph({int sentenceCount = 3}) {
    final _sentences = List<String>.generate(sentenceCount, (i) => sentence());
    return _sentences.join(' ');
  }

  /// returns a randomly generated text,
  ///  with a default length of 3 paragraphs
  ///
  /// e.g. `faker.lorem.text(paragraphCount: 2)`
  String text({int paragraphCount = 3}) {
    final _paragraphs = List<String>.generate(
      paragraphCount,
      (i) => paragraph(sentenceCount: _faker.datatype.number(min: 2, max: 7)),
    );
    return _paragraphs.join('\n');
  }
}
