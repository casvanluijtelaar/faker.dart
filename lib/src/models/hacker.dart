// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Hacker {
  final List<String>? abbreviation;
  final List<String>? adjective;
  final List<String>? ingverb;
  final List<String>? noun;
  final List<String>? phrase;
  final List<String>? verb;
  Hacker({
    this.abbreviation,
    this.adjective,
    this.ingverb,
    this.noun,
    this.phrase,
    this.verb,
  });

  Hacker copyWith({
    List<String>? abbreviation,
    List<String>? adjective,
    List<String>? ingverb,
    List<String>? noun,
    List<String>? phrase,
    List<String>? verb,
  }) {
    return Hacker(
      abbreviation: abbreviation ?? this.abbreviation,
      adjective: adjective ?? this.adjective,
      ingverb: ingverb ?? this.ingverb,
      noun: noun ?? this.noun,
      phrase: phrase ?? this.phrase,
      verb: verb ?? this.verb,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'abbreviation': abbreviation,
      'adjective': adjective,
      'ingverb': ingverb,
      'noun': noun,
      'phrase': phrase,
      'verb': verb,
    };
  }

  factory Hacker.fromMap(Map<String, dynamic> map) {
    return Hacker(
      abbreviation: map['abbreviation'],
      adjective: map['adjective'],
      ingverb: map['ingverb'],
      noun: map['noun'],
      phrase: map['phrase'],
      verb: map['verb'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Hacker.fromJson(String source) => Hacker.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Hacker(abbreviation: $abbreviation, adjective: $adjective, ingverb: $ingverb, noun: $noun, phrase: $phrase, verb: $verb)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Hacker &&
        listEquals(other.abbreviation, abbreviation) &&
        listEquals(other.adjective, adjective) &&
        listEquals(other.ingverb, ingverb) &&
        listEquals(other.noun, noun) &&
        listEquals(other.phrase, phrase) &&
        listEquals(other.verb, verb);
  }

  @override
  int get hashCode {
    return abbreviation.hashCode ^
        adjective.hashCode ^
        ingverb.hashCode ^
        noun.hashCode ^
        phrase.hashCode ^
        verb.hashCode;
  }
}
