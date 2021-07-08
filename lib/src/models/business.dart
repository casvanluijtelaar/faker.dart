// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

import 'package:collection/collection.dart';

class Business {
  final List<String>? creditCardExpiryDates;
  final List<String>? creditCardNumbers;
  final List<String>? creditCardTypes;
  Business({
    this.creditCardExpiryDates,
    this.creditCardNumbers,
    this.creditCardTypes,
  });

  Business copyWith({
    List<String>? creditCardExpiryDates,
    List<String>? creditCardNumbers,
    List<String>? creditCardTypes,
  }) {
    return Business(
      creditCardExpiryDates:
          creditCardExpiryDates ?? this.creditCardExpiryDates,
      creditCardNumbers: creditCardNumbers ?? this.creditCardNumbers,
      creditCardTypes: creditCardTypes ?? this.creditCardTypes,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'creditCardExpiryDates': creditCardExpiryDates,
      'creditCardNumbers': creditCardNumbers,
      'creditCardTypes': creditCardTypes,
    };
  }

  factory Business.fromMap(Map<String, dynamic> map) {
    return Business(
      creditCardExpiryDates: List<String>.from(map['creditCardExpiryDates']),
      creditCardNumbers: List<String>.from(map['creditCardNumbers']),
      creditCardTypes: List<String>.from(map['creditCardTypes']),
    );
  }

  String toJson() => json.encode(toMap());

  factory Business.fromJson(String source) =>
      Business.fromMap(json.decode(source));

  @override
  String toString() =>
      'Business(creditCardExpiryDates: $creditCardExpiryDates, creditCardNumbers: $creditCardNumbers, creditCardTypes: $creditCardTypes)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other is Business &&
        listEquals(other.creditCardExpiryDates, creditCardExpiryDates) &&
        listEquals(other.creditCardNumbers, creditCardNumbers) &&
        listEquals(other.creditCardTypes, creditCardTypes);
  }

  @override
  int get hashCode =>
      creditCardExpiryDates.hashCode ^
      creditCardNumbers.hashCode ^
      creditCardTypes.hashCode;
}
