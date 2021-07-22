// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Company {
  final List<String>? adjective;
  final List<String>? bsAdjective;
  final List<String>? bsNoun;
  final List<String>? bsVerb;
  final List<String>? descriptor;
  final List<String>? name;
  final List<String>? noun;
  final List<String>? suffix;
  Company({
    this.adjective,
    this.bsAdjective,
    this.bsNoun,
    this.bsVerb,
    this.descriptor,
    this.name,
    this.noun,
    this.suffix,
  });

  Company copyWith({
    List<String>? adjective,
    List<String>? bsAdjective,
    List<String>? bsNoun,
    List<String>? bsVerb,
    List<String>? descriptor,
    List<String>? name,
    List<String>? noun,
    List<String>? suffix,
  }) {
    return Company(
      adjective: adjective ?? this.adjective,
      bsAdjective: bsAdjective ?? this.bsAdjective,
      bsNoun: bsNoun ?? this.bsNoun,
      bsVerb: bsVerb ?? this.bsVerb,
      descriptor: descriptor ?? this.descriptor,
      name: name ?? this.name,
      noun: noun ?? this.noun,
      suffix: suffix ?? this.suffix,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'adjective': adjective,
      'bsAdjective': bsAdjective,
      'bsNoun': bsNoun,
      'bsVerb': bsVerb,
      'descriptor': descriptor,
      'name': name,
      'noun': noun,
      'suffix': suffix,
    };
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      adjective: map['adjective'],
      bsAdjective: map['bsAdjective'],
      bsNoun: map['bsNoun'],
      bsVerb: map['bsVerb'],
      descriptor: map['descriptor'],
      name: map['name'],
      noun: map['noun'],
      suffix: map['suffix'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Company.fromJson(String source) =>
      Company.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Company(adjective: $adjective, bsAdjective: $bsAdjective, bsNoun: $bsNoun, bsVerb: $bsVerb, descriptor: $descriptor, name: $name, noun: $noun, suffix: $suffix)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Company &&
        listEquals(other.adjective, adjective) &&
        listEquals(other.bsAdjective, bsAdjective) &&
        listEquals(other.bsNoun, bsNoun) &&
        listEquals(other.bsVerb, bsVerb) &&
        listEquals(other.descriptor, descriptor) &&
        listEquals(other.name, name) &&
        listEquals(other.noun, noun) &&
        listEquals(other.suffix, suffix);
  }

  @override
  int get hashCode {
    return adjective.hashCode ^
        bsAdjective.hashCode ^
        bsNoun.hashCode ^
        bsVerb.hashCode ^
        descriptor.hashCode ^
        name.hashCode ^
        noun.hashCode ^
        suffix.hashCode;
  }
}
