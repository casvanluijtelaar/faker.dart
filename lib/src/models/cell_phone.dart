import 'dart:convert';

import 'package:equatable/equatable.dart';

class CellPhone extends Equatable {
  final List<String> formats;
  CellPhone({
    required this.formats,
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
    return CellPhone(
      formats: List<String>.from(map['formats']),
    );
  }

  String toJson() => json.encode(toMap());

  factory CellPhone.fromJson(String source) => CellPhone.fromMap(json.decode(source));

  @override
  bool get stringify => true;

  @override
  List<Object> get props => [formats];
}
