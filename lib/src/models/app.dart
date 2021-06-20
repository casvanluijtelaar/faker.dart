import 'dart:convert';

import 'package:equatable/equatable.dart';

class App extends Equatable {
  final List<String> author;
  final List<String> name;
  final List<String> version;
  App({
    required this.author,
    required this.name,
    required this.version,
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
  bool get stringify => true;

  @override
  List<Object> get props => [author, name, version];
}
