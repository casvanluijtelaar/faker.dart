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
    required this.adjective,
    required this.bsAdjective,
    required this.bsNoun,
    required this.bsVerb,
    required this.descriptor,
    required this.name,
    required this.noun,
    required this.suffix,
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
      adjective: List<String>.from(map['adjective']),
      bsAdjective: List<String>.from(map['bsAdjective']),
      bsNoun: List<String>.from(map['bsNoun']),
      bsVerb: List<String>.from(map['bsVerb']),
      descriptor: List<String>.from(map['descriptor']),
      name: List<String>.from(map['name']),
      noun: List<String>.from(map['noun']),
      suffix: List<String>.from(map['suffix']),
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
