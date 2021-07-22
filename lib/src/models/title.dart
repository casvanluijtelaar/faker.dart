// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Title {
  final List<String>? descriptor;
  final List<String>? level;
  final List<String>? job;
  Title({
    this.descriptor,
    this.level,
    this.job,
  });

  Title copyWith({
    List<String>? descriptor,
    List<String>? level,
    List<String>? job,
  }) {
    return Title(
      descriptor: descriptor ?? this.descriptor,
      level: level ?? this.level,
      job: job ?? this.job,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'descriptor': descriptor,
      'level': level,
      'job': job,
    };
  }

  factory Title.fromMap(Map<String, dynamic> map) {
    return Title(
      descriptor: map['descriptor'],
      level: map['level'],
      job: map['job'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Title.fromJson(String source) => Title.fromMap(json.decode(source));

  @override
  String toString() =>
      'Title(descriptor: $descriptor, level: $level, job: $job)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Title &&
        listEquals(other.descriptor, descriptor) &&
        listEquals(other.level, level) &&
        listEquals(other.job, job);
  }

  @override
  int get hashCode => descriptor.hashCode ^ level.hashCode ^ job.hashCode;
}
