// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class CellPhone {
  final List<String>? formats;
  CellPhone({
    this.formats,
  });

  CellPhone copyWith({
    List<String>? formats,
  }) {
    return CellPhone(
      formats: formats ?? this.formats,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'formats': formats,
    };
  }

  factory CellPhone.fromMap(Map<String, dynamic> map) {
    return CellPhone(formats: map['formats']);
  }

  String toJson() => json.encode(toMap());

  factory CellPhone.fromJson(String source) =>
      CellPhone.fromMap(json.decode(source));

  @override
  String toString() => 'CellPhone(formats: $formats)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is CellPhone && listEquals(other.formats, formats);
  }

  @override
  int get hashCode => formats.hashCode;
}
