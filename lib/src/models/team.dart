// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Team {
  final List<String>? creature;
  final List<String>? name;
  Team({
     this.creature,
     this.name,
  });

  Team copyWith({
    List<String>? creature,
    List<String>? name,
  }) {
    return Team(
      creature: creature ?? this.creature,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'creature': creature,
      'name': name,
    };
  }

  factory Team.fromMap(Map<String, dynamic> map) {
    return Team(
      creature: List<String>.from(map['creature']),
      name: List<String>.from(map['name']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Team.fromJson(String source) => Team.fromMap(json.decode(source));

  @override
  String toString() => 'Team(creature: $creature, name: $name)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Team &&
        listEquals(other.creature, creature) &&
        listEquals(other.name, name);
  }

  @override
  int get hashCode => creature.hashCode ^ name.hashCode;
}
