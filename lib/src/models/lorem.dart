// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Lorem {
  final List<String>? supplemental;
  final List<String>? words;
  Lorem({
     this.supplemental,
     this.words,
  });

  Lorem copyWith({
    List<String>? supplemental,
    List<String>? words,
  }) {
    return Lorem(
      supplemental: supplemental ?? this.supplemental,
      words: words ?? this.words,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'supplemental': supplemental,
      'words': words,
    };
  }

  factory Lorem.fromMap(Map<String, dynamic> map) {
    return Lorem(
      supplemental: List<String>.from(map['supplemental']),
      words: List<String>.from(map['words']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Lorem.fromJson(String source) => Lorem.fromMap(json.decode(source));

  @override
  String toString() => 'Lorem(supplemental: $supplemental, words: $words)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Lorem &&
        listEquals(other.supplemental, supplemental) &&
        listEquals(other.words, words);
  }

  @override
  int get hashCode => supplemental.hashCode ^ words.hashCode;
}
