import 'dart:convert';

import 'package:collection/collection.dart';

class PhoneNumber {
  final List<String>? formats;
  PhoneNumber({
    required this.formats,
  });

  PhoneNumber copyWith({
    List<String>? formats,
  }) {
    return PhoneNumber(
      formats: formats ?? this.formats,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'formats': formats,
    };
  }

  factory PhoneNumber.fromMap(Map<String, dynamic> map) {
    return PhoneNumber(
      formats: List<String>.from(map['formats']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PhoneNumber.fromJson(String source) =>
      PhoneNumber.fromMap(json.decode(source));

  @override
  String toString() => 'PhoneNumber(formats: $formats)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is PhoneNumber && listEquals(other.formats, formats);
  }

  @override
  int get hashCode => formats.hashCode;
}
