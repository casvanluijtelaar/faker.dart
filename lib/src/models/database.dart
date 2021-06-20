import 'dart:convert';

import 'package:collection/collection.dart';

class Database {
  final List<String> collation;
  final List<String> column;
  final List<String> engine;
  final List<String> type;
  Database({
    required this.collation,
    required this.column,
    required this.engine,
    required this.type,
  });

  Database copyWith({
    List<String>? collation,
    List<String>? column,
    List<String>? engine,
    List<String>? type,
  }) {
    return Database(
      collation: collation ?? this.collation,
      column: column ?? this.column,
      engine: engine ?? this.engine,
      type: type ?? this.type,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'collation': collation,
      'column': column,
      'engine': engine,
      'type': type,
    };
  }

  factory Database.fromMap(Map<String, dynamic> map) {
    return Database(
      collation: List<String>.from(map['collation']),
      column: List<String>.from(map['column']),
      engine: List<String>.from(map['engine']),
      type: List<String>.from(map['type']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Database.fromJson(String source) => Database.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Database(collation: $collation, column: $column, engine: $engine, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is Database &&
      listEquals(other.collation, collation) &&
      listEquals(other.column, column) &&
      listEquals(other.engine, engine) &&
      listEquals(other.type, type);
  }

  @override
  int get hashCode {
    return collation.hashCode ^
      column.hashCode ^
      engine.hashCode ^
      type.hashCode;
  }
}