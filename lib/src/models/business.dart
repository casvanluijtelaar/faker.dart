import 'dart:convert';

import 'package:equatable/equatable.dart';

class Business extends Equatable {
  final List<String> creditCardExpiryDates;
  final List<String> creditCardNumbers;
  final List<String> creditCardTypes;
  Business({
    required this.creditCardExpiryDates,
    required this.creditCardNumbers,
    required this.creditCardTypes,
  });



  Business copyWith({
    List<String>? creditCardExpiryDates,
    List<String>? creditCardNumbers,
    List<String>? creditCardTypes,
  }) {
    return Business(
      creditCardExpiryDates: creditCardExpiryDates ?? this.creditCardExpiryDates,
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

  factory Business.fromJson(String source) => Business.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [creditCardExpiryDates, creditCardNumbers, creditCardTypes];
}
