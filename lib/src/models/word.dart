// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Word {
  final List<String>? adjective;
  final List<String>? adverb;
  final List<String>? conjunction;
  final List<String>? interjection;
  final List<String>? noun;
  final List<String>? preposition;
  final List<String>? verb;
  Word({
    this.adjective,
    this.adverb,
    this.conjunction,
    this.interjection,
    this.noun,
    this.preposition,
    this.verb,
  });

  Word copyWith({
    List<String>? adjective,
    List<String>? adverb,
    List<String>? conjunction,
    List<String>? interjection,
    List<String>? noun,
    List<String>? preposition,
    List<String>? verb,
  }) {
    return Word(
      adjective: adjective ?? this.adjective,
      adverb: adverb ?? this.adverb,
      conjunction: conjunction ?? this.conjunction,
      interjection: interjection ?? this.interjection,
      noun: noun ?? this.noun,
      preposition: preposition ?? this.preposition,
      verb: verb ?? this.verb,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adjective': adjective,
      'adverb': adverb,
      'conjunction': conjunction,
      'interjection': interjection,
      'noun': noun,
      'preposition': preposition,
      'verb': verb,
    };
  }

  factory Word.fromMap(Map<String, dynamic> map) {
    return Word(
      adjective: map['adjective'],
      adverb: map['adverb'],
      conjunction: map['conjunction'],
      interjection: map['interjection'],
      noun: map['noun'],
      preposition: map['preposition'],
      verb: map['verb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Word.fromJson(String source) => Word.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Word(adjective: $adjective, adverb: $adverb, conjunction: $conjunction, interjection: $interjection, noun: $noun, preposition: $preposition, verb: $verb)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Word &&
        listEquals(other.adjective, adjective) &&
        listEquals(other.adverb, adverb) &&
        listEquals(other.conjunction, conjunction) &&
        listEquals(other.interjection, interjection) &&
        listEquals(other.noun, noun) &&
        listEquals(other.preposition, preposition) &&
        listEquals(other.verb, verb);
  }

  @override
  int get hashCode {
    return adjective.hashCode ^
        adverb.hashCode ^
        conjunction.hashCode ^
        interjection.hashCode ^
        noun.hashCode ^
        preposition.hashCode ^
        verb.hashCode;
  }
}
