// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Music {
  final List<String>? genre;
  Music({
    this.genre,
  });

  Music copyWith({
    List<String>? genre,
  }) {
    return Music(
      genre: genre ?? this.genre,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'genre': genre,
    };
  }

  factory Music.fromMap(Map<String, dynamic> map) {
    return Music(
      genre: map['genre'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Music.fromJson(String source) => Music.fromMap(json.decode(source));

  @override
  String toString() => 'Music(genre: $genre)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Music && listEquals(other.genre, genre);
  }

  @override
  int get hashCode => genre.hashCode;
}
