// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Internet {
  final List<String>? avatarUri;
  final List<String>? domainSuffix;
  final List<String>? exampleEmail;
  final List<String>? freeEmail;
  Internet({
    this.avatarUri,
    this.domainSuffix,
    this.exampleEmail,
    this.freeEmail,
  });

  Internet copyWith({
    List<String>? avatarUri,
    List<String>? domainSuffix,
    List<String>? exampleEmail,
    List<String>? freeEmail,
  }) {
    return Internet(
      avatarUri: avatarUri ?? this.avatarUri,
      domainSuffix: domainSuffix ?? this.domainSuffix,
      exampleEmail: exampleEmail ?? this.exampleEmail,
      freeEmail: freeEmail ?? this.freeEmail,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'avatarUri': avatarUri,
      'domainSuffix': domainSuffix,
      'exampleEmail': exampleEmail,
      'freeEmail': freeEmail,
    };
  }

  factory Internet.fromMap(Map<String, dynamic> map) {
    return Internet(
      avatarUri: List<String>.from(map['avatarUri']),
      domainSuffix: List<String>.from(map['domainSuffix']),
      exampleEmail: List<String>.from(map['exampleEmail']),
      freeEmail: List<String>.from(map['freeEmail']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Internet.fromJson(String source) =>
      Internet.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Internet(avatarUri: $avatarUri, domainSuffix: $domainSuffix, exampleEmail: $exampleEmail, freeEmail: $freeEmail)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Internet &&
        listEquals(other.avatarUri, avatarUri) &&
        listEquals(other.domainSuffix, domainSuffix) &&
        listEquals(other.exampleEmail, exampleEmail) &&
        listEquals(other.freeEmail, freeEmail);
  }

  @override
  int get hashCode {
    return avatarUri.hashCode ^
        domainSuffix.hashCode ^
        exampleEmail.hashCode ^
        freeEmail.hashCode;
  }
}
