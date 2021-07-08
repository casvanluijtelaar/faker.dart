// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

class System {
  final bool temp;
  System({
    required this.temp,
  });

  System copyWith({
    bool? temp,
  }) {
    return System(
      temp: temp ?? this.temp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
    };
  }

  factory System.fromMap(Map<String, dynamic> map) {
    return System(
      temp: map['temp'] ?? true,
    );
  }

  String toJson() => json.encode(toMap());

  factory System.fromJson(String source) => System.fromMap(json.decode(source));

  @override
  String toString() => 'System(temp: $temp)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is System && other.temp == temp;
  }

  @override
  int get hashCode => temp.hashCode;
}
