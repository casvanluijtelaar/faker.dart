import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:equatable/equatable.dart';

class App {
  final List<String>? author;
  final List<String>? name;
  final List<String>? version;
  App({
    this.author,
    this.name,
    this.version,
  });
  

  App copyWith({
    List<String>? author,
    List<String>? name,
    List<String>? version,
  }) {
    return App(
      author: author ?? this.author,
      name: name ?? this.name,
      version: version ?? this.version,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'author': author,
      'name': name,
      'version': version,
    };
  }

  factory App.fromMap(Map<String, dynamic> map) {
    return App(
      author: List<String>.from(map['author']),
      name: List<String>.from(map['name']),
      version: List<String>.from(map['version']),
    );
  }

  String toJson() => json.encode(toMap());

  factory App.fromJson(String source) => App.fromMap(json.decode(source));

  @override
  String toString() => 'App(author: $author, name: $name, version: $version)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return other is App &&
      listEquals(other.author, author) &&
      listEquals(other.name, name) &&
      listEquals(other.version, version);
  }

  @override
  int get hashCode => author.hashCode ^ name.hashCode ^ version.hashCode;
}
