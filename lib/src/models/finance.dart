// ignore_for_file: public_member_api_docs,sort_constructors_first, directives_ordering, lines_longer_than_80_chars
import 'dart:convert';

class Finance {
  final bool temp;
  Finance({
    required this.temp,
  });

  Finance copyWith({
    bool? temp,
  }) {
    return Finance(
      temp: temp ?? this.temp,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'temp': temp,
    };
  }

  factory Finance.fromMap(Map<String, dynamic> map) {
    return Finance(
      temp: map['temp'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Finance.fromJson(String source) =>
      Finance.fromMap(json.decode(source));

  @override
  String toString() => 'Finance(temp: $temp)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Finance && other.temp == temp;
  }

  @override
  int get hashCode => temp.hashCode;
}
